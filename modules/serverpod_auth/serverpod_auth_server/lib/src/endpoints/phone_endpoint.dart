import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';
import 'package:serverpod_auth_server/src/business/phone_auth.dart';

/// Endpoint for handling Sign in with phone.
class PhoneEndpoint extends Endpoint {
  /// Authenticates a user with phone and OTP. Returns an
  /// [AuthenticationResponse] with the users information.
  Future<AuthenticationResponse> verifyOTP(
    Session session,
    String phoneNumber,
    String otp,
  ) {
    return PhonesAuth.verifyOTP(session, number: phoneNumber, otp: otp);
  }

  /// Sends an OTP to the user.
  Future<AuthenticationResponse> sendOTP(
    Session session,
    String phoneNumber, {
    Map<String, String>? extraParams,
  }) {
    return PhonesAuth.sendOTP(
      session,
      number: phoneNumber,
      extraParams: extraParams,
    );
  }

  /// Resends an OTP to the user.
  Future<AuthenticationResponse> resendOTP(
    Session session,
    String phoneNumber, {
    Map<String, String>? extraParams,
  }) {
    return PhonesAuth.resendOTP(
      session,
      number: phoneNumber,
      extraParams: extraParams,
    );
  }
}
