/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

/// Provides a response to an authentication attempt.
abstract class AuthenticationResponse implements _i1.SerializableModel {
  AuthenticationResponse._({
    required this.success,
    this.key,
    this.keyId,
    this.userInfo,
    this.failReason,
    this.failText,
  });

  factory AuthenticationResponse({
    required bool success,
    String? key,
    int? keyId,
    _i2.UserInfo? userInfo,
    _i2.AuthenticationFailReason? failReason,
    String? failText,
  }) = _AuthenticationResponseImpl;

  factory AuthenticationResponse.fromJson(
      Map<String, dynamic> jsonSerialization) {
    return AuthenticationResponse(
      success: jsonSerialization['success'] as bool,
      key: jsonSerialization['key'] as String?,
      keyId: jsonSerialization['keyId'] as int?,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['userInfo'] as Map<String, dynamic>)),
      failReason: jsonSerialization['failReason'] == null
          ? null
          : _i2.AuthenticationFailReason.fromJson(
              (jsonSerialization['failReason'] as int)),
      failText: jsonSerialization['failText'] as String?,
    );
  }

  /// True if the authentication was successful.
  bool success;

  /// The key associated with a successful authentication.
  String? key;

  /// The id of the key associated with a successful authentication.
  int? keyId;

  /// The [UserInfo] of the authenticated user, only set if the authentication
  /// was successful.
  _i2.UserInfo? userInfo;

  /// Reason for a failed authentication attempt, only set if the authentication
  /// failed.
  _i2.AuthenticationFailReason? failReason;

  /// The text to show for the failed authentication.
  String? failText;

  AuthenticationResponse copyWith({
    bool? success,
    String? key,
    int? keyId,
    _i2.UserInfo? userInfo,
    _i2.AuthenticationFailReason? failReason,
    String? failText,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'success': success,
      if (key != null) 'key': key,
      if (keyId != null) 'keyId': keyId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      if (failReason != null) 'failReason': failReason?.toJson(),
      if (failText != null) 'failText': failText,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AuthenticationResponseImpl extends AuthenticationResponse {
  _AuthenticationResponseImpl({
    required bool success,
    String? key,
    int? keyId,
    _i2.UserInfo? userInfo,
    _i2.AuthenticationFailReason? failReason,
    String? failText,
  }) : super._(
          success: success,
          key: key,
          keyId: keyId,
          userInfo: userInfo,
          failReason: failReason,
          failText: failText,
        );

  @override
  AuthenticationResponse copyWith({
    bool? success,
    Object? key = _Undefined,
    Object? keyId = _Undefined,
    Object? userInfo = _Undefined,
    Object? failReason = _Undefined,
    Object? failText = _Undefined,
  }) {
    return AuthenticationResponse(
      success: success ?? this.success,
      key: key is String? ? key : this.key,
      keyId: keyId is int? ? keyId : this.keyId,
      userInfo:
          userInfo is _i2.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      failReason: failReason is _i2.AuthenticationFailReason?
          ? failReason
          : this.failReason,
      failText: failText is String? ? failText : this.failText,
    );
  }
}
