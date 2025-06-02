import 'dart:convert';

import 'package:amazon_cognito_identity_dart_2/sig_v4.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as path;

class Policy {
  String expiration;
  String region;
  String bucket;
  String key;
  String credential;
  String datetime;
  int maxFileSize;
  bool public;
  String? contentType;

  Policy(this.key, this.bucket, this.datetime, this.expiration, this.credential,
      this.maxFileSize,
      {this.region = 'us-east-1', this.public = true, this.contentType});

  factory Policy.fromS3PresignedPost(
    String key,
    String bucket,
    String accessKeyId,
    int expiryMinutes,
    int maxFileSize, {
    String region = 'us-east-1',
    bool public = true,
    String? contentType,
  }) {
    final datetime = SigV4.generateDatetime();
    final expiration = (DateTime.now())
        .add(Duration(minutes: expiryMinutes))
        .toUtc()
        .toString()
        .split(' ')
        .join('T');
    final cred =
        '$accessKeyId/${SigV4.buildCredentialScope(datetime, region, 's3')}';
    contentType ??= _getContentType(key);

    return Policy(key, bucket, datetime, expiration, cred, maxFileSize,
        region: region, public: public, contentType: contentType);
  }

  String encode() {
    final bytes = utf8.encode(toString());
    return base64.encode(bytes);
  }

  @override
  String toString() {
    final conditions = [
      '{"bucket": "$bucket"}',
      '["starts-with", "\$key", "$key"]',
      '{"acl": "${public ? 'public-read' : 'private'}"}',
      '["content-length-range", 1, $maxFileSize]',
      '{"x-amz-credential": "$credential"}',
      '{"x-amz-algorithm": "AWS4-HMAC-SHA256"}',
      '{"x-amz-date": "$datetime"}',
    ];

    // Добавляем условие для content-type если оно указано
    if (contentType != null) {
      conditions.add('["starts-with", "\$Content-Type", "$contentType"]');
    }

    return '''
{ "expiration": "$expiration",
  "conditions": [
    ${conditions.join(',\n    ')}
  ]
}
''';
  }
}

// Добавьте вспомогательную функцию для определения content-type
String _getContentType(String filename) {
  final mimeType = lookupMimeType(filename);
  if (mimeType != null) {
    return mimeType;
  }

  final extension = path.extension(filename).toLowerCase();

  switch (extension) {
    case '.mp3':
      return 'audio/mpeg';
    case '.wav':
      return 'audio/wav';
    case '.jpg':
    case '.jpeg':
      return 'image/jpeg';
    case '.png':
      return 'image/png';
    case '.pdf':
      return 'application/pdf';
    default:
      return 'application/octet-stream';
  }
}
