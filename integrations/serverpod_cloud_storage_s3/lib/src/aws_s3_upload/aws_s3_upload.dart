library aws_s3_upload;

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' as http_parser;
import 'package:path/path.dart' as path;

import 'policy.dart';

/// Convenience class for uploading files to AWS S3
class AwsS3Uploader {
  /// Upload a file, returning the file's public URL on success.
  static Future<String?> uploadFile({
    /// AWS access key
    required String accessKey,

    /// AWS secret key
    required String secretKey,

    /// The name of the S3 storage bucket to upload  to
    required String bucket,
    required String endpoint,

    /// The file to upload
    required File file,

    /// The path to upload the file to (e.g. "uploads/public"). Defaults to the root "directory"
    required String uploadDst,

    /// The AWS region. Must be formatted correctly, e.g. us-west-1
    required String region,
  }) async {
    final stream = http.ByteStream(Stream.castFrom(file.openRead()));
    final length = await file.length();

    final uri = Uri.parse(endpoint);
    final req = http.MultipartRequest("POST", uri);
    final multipartFile = http.MultipartFile('file', stream, length,
        filename: path.basename(file.path));

    final policy = Policy.fromS3PresignedPost(
        uploadDst, bucket, accessKey, 15, length,
        region: region);
    final key =
        SigV4.calculateSigningKey(secretKey, policy.datetime, region, 's3');
    final signature = SigV4.calculateSignature(key, policy.encode());

    req.files.add(multipartFile);
    req.fields['key'] = policy.key;
    req.fields['acl'] = 'public-read';
    req.fields['X-Amz-Credential'] = policy.credential;
    req.fields['X-Amz-Algorithm'] = 'AWS4-HMAC-SHA256';
    req.fields['X-Amz-Date'] = policy.datetime;
    req.fields['Policy'] = policy.encode();
    req.fields['X-Amz-Signature'] = signature;

    try {
      final res = await req.send();

      if (res.statusCode >= 400 && res.statusCode < 500) {
        stderr.writeln(
          'Failed to upload to AWS, with reason: ${res.reasonPhrase}',
        );
      }

      if (res.statusCode == 204) return '$endpoint/$uploadDst';
    } catch (e) {
      stderr.writeln('Failed to upload to AWS, with exception:');
      stderr.writeln(e);
      return null;
    }
    return null;
  }

  /// Upload a file, returning the file's public URL on success.
  static Future<String?> uploadData({
    required String accessKey,
    required String secretKey,
    required String bucket,
    required String endpoint,
    required ByteData data,
    String destDir = '',
    required String region,
    required String uploadDst,
    bool public = true,
  }) async {
    final stream = http.ByteStream.fromBytes(data.buffer.asUint8List());
    final length = data.lengthInBytes;

    final uri = Uri.parse(endpoint);
    final req = http.MultipartRequest("POST", uri);

    final policy = Policy.fromS3PresignedPost(
        uploadDst, bucket, accessKey, 15, length,
        region: region, public: public);
    final multipartFile = http.MultipartFile(
      'file',
      stream,
      length,
      filename: path.basename(uploadDst),
      contentType: http_parser.MediaType.parse(policy.contentType!),
    );

    final key =
        SigV4.calculateSigningKey(secretKey, policy.datetime, region, 's3');
    final signature = SigV4.calculateSignature(key, policy.encode());

    req.files.add(multipartFile);
    req.fields['key'] = policy.key;
    req.fields['acl'] = public ? 'public-read' : 'private';
    req.fields['Content-Type'] = policy.contentType!;
    req.fields['X-Amz-Credential'] = policy.credential;
    req.fields['X-Amz-Algorithm'] = 'AWS4-HMAC-SHA256';
    req.fields['X-Amz-Date'] = policy.datetime;
    req.fields['Policy'] = policy.encode();
    req.fields['X-Amz-Signature'] = signature;

    try {
      final res = await req.send();

      if (res.statusCode >= 400 && res.statusCode < 500) {
        final responseBody = await res.stream.bytesToString();
        stderr.writeln('Failed to upload to AWS: ${res.reasonPhrase}');
        stderr.writeln('Response: $responseBody');
      }

      if (res.statusCode == 204) return '$endpoint/$uploadDst';
    } catch (e) {
      stderr.writeln('Failed to upload to AWS, with exception:');
      stderr.writeln(e);
      return null;
    }
    return null;
  }

  static Future<String?> getDirectUploadDescription({
    /// AWS access key
    required String accessKey,

    /// AWS secret key
    required String secretKey,

    /// The name of the S3 storage bucket to upload  to
    required String bucket,
    required String endpoint,

    /// The file to upload
    // required ByteData data,

    /// The path to upload the file to (e.g. "uploads/public"). Defaults to the root "directory"
    String destDir = '',

    /// The AWS region. Must be formatted correctly, e.g. us-west-1
    required String region,

    /// The filename to upload as. If null, defaults to the given file's current filename.
    required String uploadDst,
    Duration expires = const Duration(minutes: 10),
    int maxFileSize = 10 * 1024 * 1024,
    bool public = true,
  }) async {
    final policy = Policy.fromS3PresignedPost(
      uploadDst,
      bucket,
      accessKey,
      expires.inMinutes,
      maxFileSize,
      region: region,
      public: public,
    );
    final key =
        SigV4.calculateSigningKey(secretKey, policy.datetime, region, 's3');
    final signature = SigV4.calculateSignature(key, policy.encode());

    var uploadDescriptionData = {
      'url': endpoint,
      'type': 'multipart',
      'field': 'file',
      'file-name': path.basename(uploadDst),
      'request-fields': {
        'key': policy.key,
        'acl': public ? 'public-read' : 'private',
        'X-Amz-Credential': policy.credential,
        'X-Amz-Algorithm': 'AWS4-HMAC-SHA256',
        'X-Amz-Date': policy.datetime,
        'Policy': policy.encode(),
        'X-Amz-Signature': signature,
        'Content-Type': policy.contentType ?? 'application/octet-stream',
      },
    };

    return jsonEncode(uploadDescriptionData);
  }
}
