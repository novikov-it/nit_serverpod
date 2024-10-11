import 'package:serverpod/server.dart';
import 'package:serverpod_auth_server/module.dart';

typedef SendValidationPhoneCallback = Future<bool> Function(
    Session session, String number, String validationCode);

class PhoneAuthConfig extends AuthConfig {
  static PhoneAuthConfig _config = PhoneAuthConfig();

  static void set(PhoneAuthConfig config) {
    _config = config;
  }

  PhoneAuthConfig({
    super.maxAllowedEmailSignInAttempts,
    super.emailSignInFailureResetTime,
    super.enableUserImages,
    super.importUserImagesFromGoogleSignIn,
    super.userImageSize,
    super.userImageFormat,
    super.userImageQuality,
    super.userImageGenerator,
    super.userCanEditUserImage,
    super.userCanEditUserName,
    super.userCanEditFullName,
    super.userCanSeeUserName,
    super.userCanSeeFullName,
    super.userInfoCacheLifetime,
    super.onUserWillBeCreated,
    super.onUserCreated,
    super.onUserUpdated,
    super.sendPasswordResetEmail,
    super.sendValidationEmail,
    super.validationCodeLength,
    super.passwordResetExpirationTime,
    super.extraSaltyHash,
    super.firebaseServiceAccountKeyJson,
    super.maxPasswordLength,
    super.minPasswordLength,
    super.allowUnsecureRandom,
    this.maxAllowedTelegramSignInAttempts = 5,
    this.phoneSignInFailureResetTime = const Duration(minutes: 5),
    this.phoneExpirationTime = const Duration(minutes: 5),
    this.resendOTPmaxAttempt = 3,
    this.resendOTPFailureResetTime = const Duration(minutes: 5),
    this.sendValidationOTP,
  });

  ///Max allowed failed SMS sign in attempts within the reset period.
  /// Defaults to 5. (By default, a user can make 5 sign in attempts within a
  /// 5 minute window.)
  final int maxAllowedTelegramSignInAttempts;

  /// the reset period for SMS authentication attempts. Defaults to 5 minutes.
  final Duration phoneSignInFailureResetTime;

  /// SMS auth expiration time. Defaults to 5 minutes.
  final Duration phoneExpirationTime;

  /// Callback for sending validation telegram.
  final SendValidationPhoneCallback? sendValidationOTP;

  /// Amount of attempts allowed to resend a validation code. Defaults to 3.
  final int resendOTPmaxAttempt;

  /// the reset period of resend validation code. Defaults to 5 minutes.
  final Duration resendOTPFailureResetTime;

  static PhoneAuthConfig get current => _config;
}
