/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'apple_auth_info.dart' as _i2;
import 'auth_key.dart' as _i3;
import 'authentication_fail_reason.dart' as _i4;
import 'authentication_response.dart' as _i5;
import 'email_auth.dart' as _i6;
import 'email_create_account_request.dart' as _i7;
import 'email_failed_sign_in.dart' as _i8;
import 'email_password_reset.dart' as _i9;
import 'email_reset.dart' as _i10;
import 'google_refresh_token.dart' as _i11;
import 'phone_auth.dart' as _i12;
import 'phone_failed_sign_in.dart' as _i13;
import 'user_image.dart' as _i14;
import 'user_info.dart' as _i15;
import 'user_info_public.dart' as _i16;
import 'user_settings_config.dart' as _i17;
export 'apple_auth_info.dart';
export 'auth_key.dart';
export 'authentication_fail_reason.dart';
export 'authentication_response.dart';
export 'email_auth.dart';
export 'email_create_account_request.dart';
export 'email_failed_sign_in.dart';
export 'email_password_reset.dart';
export 'email_reset.dart';
export 'google_refresh_token.dart';
export 'phone_auth.dart';
export 'phone_failed_sign_in.dart';
export 'user_image.dart';
export 'user_info.dart';
export 'user_info_public.dart';
export 'user_settings_config.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.AppleAuthInfo) {
      return _i2.AppleAuthInfo.fromJson(data) as T;
    }
    if (t == _i3.AuthKey) {
      return _i3.AuthKey.fromJson(data) as T;
    }
    if (t == _i4.AuthenticationFailReason) {
      return _i4.AuthenticationFailReason.fromJson(data) as T;
    }
    if (t == _i5.AuthenticationResponse) {
      return _i5.AuthenticationResponse.fromJson(data) as T;
    }
    if (t == _i6.EmailAuth) {
      return _i6.EmailAuth.fromJson(data) as T;
    }
    if (t == _i7.EmailCreateAccountRequest) {
      return _i7.EmailCreateAccountRequest.fromJson(data) as T;
    }
    if (t == _i8.EmailFailedSignIn) {
      return _i8.EmailFailedSignIn.fromJson(data) as T;
    }
    if (t == _i9.EmailPasswordReset) {
      return _i9.EmailPasswordReset.fromJson(data) as T;
    }
    if (t == _i10.EmailReset) {
      return _i10.EmailReset.fromJson(data) as T;
    }
    if (t == _i11.GoogleRefreshToken) {
      return _i11.GoogleRefreshToken.fromJson(data) as T;
    }
    if (t == _i12.PhoneAuth) {
      return _i12.PhoneAuth.fromJson(data) as T;
    }
    if (t == _i13.PhoneFailedSignIn) {
      return _i13.PhoneFailedSignIn.fromJson(data) as T;
    }
    if (t == _i14.UserImage) {
      return _i14.UserImage.fromJson(data) as T;
    }
    if (t == _i15.UserInfo) {
      return _i15.UserInfo.fromJson(data) as T;
    }
    if (t == _i16.UserInfoPublic) {
      return _i16.UserInfoPublic.fromJson(data) as T;
    }
    if (t == _i17.UserSettingsConfig) {
      return _i17.UserSettingsConfig.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.AppleAuthInfo?>()) {
      return (data != null ? _i2.AppleAuthInfo.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.AuthKey?>()) {
      return (data != null ? _i3.AuthKey.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.AuthenticationFailReason?>()) {
      return (data != null ? _i4.AuthenticationFailReason.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i5.AuthenticationResponse?>()) {
      return (data != null ? _i5.AuthenticationResponse.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i6.EmailAuth?>()) {
      return (data != null ? _i6.EmailAuth.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.EmailCreateAccountRequest?>()) {
      return (data != null
          ? _i7.EmailCreateAccountRequest.fromJson(data)
          : null) as T;
    }
    if (t == _i1.getType<_i8.EmailFailedSignIn?>()) {
      return (data != null ? _i8.EmailFailedSignIn.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.EmailPasswordReset?>()) {
      return (data != null ? _i9.EmailPasswordReset.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.EmailReset?>()) {
      return (data != null ? _i10.EmailReset.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.GoogleRefreshToken?>()) {
      return (data != null ? _i11.GoogleRefreshToken.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i12.PhoneAuth?>()) {
      return (data != null ? _i12.PhoneAuth.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.PhoneFailedSignIn?>()) {
      return (data != null ? _i13.PhoneFailedSignIn.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.UserImage?>()) {
      return (data != null ? _i14.UserImage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.UserInfo?>()) {
      return (data != null ? _i15.UserInfo.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.UserInfoPublic?>()) {
      return (data != null ? _i16.UserInfoPublic.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.UserSettingsConfig?>()) {
      return (data != null ? _i17.UserSettingsConfig.fromJson(data) : null)
          as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<Map<String, String>?>()) {
      return (data != null
          ? (data as Map).map((k, v) =>
              MapEntry(deserialize<String>(k), deserialize<String>(v)))
          : null) as dynamic;
    }
    if (t == _i1.getType<Map<String, String>?>()) {
      return (data != null
          ? (data as Map).map((k, v) =>
              MapEntry(deserialize<String>(k), deserialize<String>(v)))
          : null) as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.AppleAuthInfo) {
      return 'AppleAuthInfo';
    }
    if (data is _i3.AuthKey) {
      return 'AuthKey';
    }
    if (data is _i4.AuthenticationFailReason) {
      return 'AuthenticationFailReason';
    }
    if (data is _i5.AuthenticationResponse) {
      return 'AuthenticationResponse';
    }
    if (data is _i6.EmailAuth) {
      return 'EmailAuth';
    }
    if (data is _i7.EmailCreateAccountRequest) {
      return 'EmailCreateAccountRequest';
    }
    if (data is _i8.EmailFailedSignIn) {
      return 'EmailFailedSignIn';
    }
    if (data is _i9.EmailPasswordReset) {
      return 'EmailPasswordReset';
    }
    if (data is _i10.EmailReset) {
      return 'EmailReset';
    }
    if (data is _i11.GoogleRefreshToken) {
      return 'GoogleRefreshToken';
    }
    if (data is _i12.PhoneAuth) {
      return 'PhoneAuth';
    }
    if (data is _i13.PhoneFailedSignIn) {
      return 'PhoneFailedSignIn';
    }
    if (data is _i14.UserImage) {
      return 'UserImage';
    }
    if (data is _i15.UserInfo) {
      return 'UserInfo';
    }
    if (data is _i16.UserInfoPublic) {
      return 'UserInfoPublic';
    }
    if (data is _i17.UserSettingsConfig) {
      return 'UserSettingsConfig';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'AppleAuthInfo') {
      return deserialize<_i2.AppleAuthInfo>(data['data']);
    }
    if (data['className'] == 'AuthKey') {
      return deserialize<_i3.AuthKey>(data['data']);
    }
    if (data['className'] == 'AuthenticationFailReason') {
      return deserialize<_i4.AuthenticationFailReason>(data['data']);
    }
    if (data['className'] == 'AuthenticationResponse') {
      return deserialize<_i5.AuthenticationResponse>(data['data']);
    }
    if (data['className'] == 'EmailAuth') {
      return deserialize<_i6.EmailAuth>(data['data']);
    }
    if (data['className'] == 'EmailCreateAccountRequest') {
      return deserialize<_i7.EmailCreateAccountRequest>(data['data']);
    }
    if (data['className'] == 'EmailFailedSignIn') {
      return deserialize<_i8.EmailFailedSignIn>(data['data']);
    }
    if (data['className'] == 'EmailPasswordReset') {
      return deserialize<_i9.EmailPasswordReset>(data['data']);
    }
    if (data['className'] == 'EmailReset') {
      return deserialize<_i10.EmailReset>(data['data']);
    }
    if (data['className'] == 'GoogleRefreshToken') {
      return deserialize<_i11.GoogleRefreshToken>(data['data']);
    }
    if (data['className'] == 'PhoneAuth') {
      return deserialize<_i12.PhoneAuth>(data['data']);
    }
    if (data['className'] == 'PhoneFailedSignIn') {
      return deserialize<_i13.PhoneFailedSignIn>(data['data']);
    }
    if (data['className'] == 'UserImage') {
      return deserialize<_i14.UserImage>(data['data']);
    }
    if (data['className'] == 'UserInfo') {
      return deserialize<_i15.UserInfo>(data['data']);
    }
    if (data['className'] == 'UserInfoPublic') {
      return deserialize<_i16.UserInfoPublic>(data['data']);
    }
    if (data['className'] == 'UserSettingsConfig') {
      return deserialize<_i17.UserSettingsConfig>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
