import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
// ignore: implementation_imports
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;
import 'package:serverpod_auth_server/serverpod_auth_server.dart';

const _authMethod = 'phone';

/// Authentication methods for phone.
class PhonesAuth {
  /// Verifies the phone number and OTP.
  static Future<AuthenticationResponse> verifyOTP(
    Session session, {
    required String number,
    required String otp,
    Map<String, String>? userExtraData,
  }) async {
    var entry = await PhoneAuth.db.findFirstRow(
      session,
      orderDescending: true,
      orderBy: (p0) => p0.id,
      where: (t) {
        return t.phoneNumber.equals(number) & t.isUsed.equals(false);
      },
    );

    if (entry == null) {
      session.log('Failed to verify user $number: non-used auth not found');
      return AuthenticationResponse(
        success: false,
        failReason: AuthenticationFailReason.invalidCredentials,
        failText: 'non-used auth not found',
      );
    }

    print('Verifying $number with $otp, expect hash to be ${entry.hash}');

    var verification = _verifyHashData(
      session,
      hashedData: entry.hash,
      phoneNumber: number,
      otp: otp,
    );

    if (!verification) {
      session.log(
        'Failed to verify user $number: Invalid otp',
        level: LogLevel.error,
      );
      return AuthenticationResponse(
        success: false,
        failReason: AuthenticationFailReason.invalidCredentials,
        failText: 'Invalid otp',
      );
    }

    session.log('User $number verified');

    var userInfo = await Users.findUserByIdentifier(session, number);

    if (userInfo == null) {
      session.log('User $number not found');

      session.log('Create new user with indentifier $number');

      userInfo = await Users.createUser(
        session,
        UserInfo(
          userIdentifier: number,
          created: DateTime.now(),
          scopeNames: [],
          blocked: false,
          extraData: {
            if (entry.userExtraData != null) ...entry.userExtraData!,
            if (userExtraData != null) ...userExtraData
          },
        ),
        _authMethod,
      );
    }

    var authKey = await auth.UserAuthentication.signInUser(
      session,
      userInfo!.id!,
      _authMethod,
    );

    entry.isUsed = true;

    unawaited(
      PhoneAuth.db.updateRow(
        session,
        entry,
      ),
    );

    return AuthenticationResponse(
      success: true,
      key: authKey.key,
      userInfo: userInfo,
      keyId: authKey.id,
    );
  }

  /// Sends OTP to the phone number.
  static Future<AuthenticationResponse> sendOTP(
    Session session, {
    required String number,
    Map<String, String>? userExtraData,
    Map<String, String>? sendOtpExtraParams,
  }) async {
    // if (number.length != 11 || !number.startsWith('7')) {
    //   session.log(
    //     'Неверный формат номера телефона $number',
    //     level: LogLevel.error,
    //   );
    //   return AuthenticationResponse(
    //     success: false,
    //     failReason: AuthenticationFailReason.userCreationDenied,
    //   );
    // }

    if (await _hasTooManyFailedSignIns(session, number)) {
      session.log(
        'Too many failed sign in attempts $number',
        level: LogLevel.warning,
      );
      return AuthenticationResponse(
        success: false,
        failReason: AuthenticationFailReason.tooManyFailedAttempts,
      );
    }

    var phoneAuthConfig = PhoneAuthConfig.current;

    var otp =
        // Serverpod.instance.runMode == ServerpodRunMode.development
        phoneAuthConfig.sendValidationOTP == null ? '123456' : _generateOTP();

    var hash = _generateHashData(
      phoneNumber: number,
      otp: otp,
    );

    try {
      if (phoneAuthConfig.sendValidationOTP != null) {
        // NiT: добавить проверку возвращаемого значения
        await phoneAuthConfig.sendValidationOTP!(
          session,
          number,
          otp,
          extraParams: sendOtpExtraParams,
        );
      }

      var expirationTime = _getHashExpirationTime(hash);
      if (expirationTime == null) return AuthenticationResponse(success: false);

      await session.db.insertRow(
        PhoneAuth(
          phoneNumber: number,
          hash: hash,
          expirationTime: expirationTime,
          userExtraData: userExtraData,
        ),
      );
    } catch (e) {
      session.log('Error sending OTP to $number: $e', level: LogLevel.error);
      return AuthenticationResponse(
        success: false,
        failReason: AuthenticationFailReason.internalError,
      );
    }

    return AuthenticationResponse(
      success: true,
    );
  }

  /// Resends an OTP to the user.
  static Future<AuthenticationResponse> resendOTP(
    Session session, {
    required String number,
    Map<String, String>? userExtraData,
    Map<String, String>? extraParams,
  }) async {
    var phoneAuthConfig = PhoneAuthConfig.current;
    var sendCountForLastTime = await PhoneAuth.db.count(
      session,
      where: (t) =>
          t.phoneNumber.equals(number) &
          t.expirationTime.between(
            DateTime.now().subtract(phoneAuthConfig.resendOTPFailureResetTime),
            DateTime.now(),
          ),
    );

    if (sendCountForLastTime > phoneAuthConfig.resendOTPmaxAttempt) {
      return AuthenticationResponse(
        success: false,
        failReason: AuthenticationFailReason.tooManyFailedAttempts,
      );
    }

    return await sendOTP(
      session,
      number: number,
      userExtraData: userExtraData,
      sendOtpExtraParams: extraParams,
    );
  }

  static bool _verifyHashData(
    Session session, {
    required String hashedData,
    required String phoneNumber,
    required String otp,
  }) {
    /// Split the string data into hash and expiration time

    var storedExpirationTime = _getHashExpirationTime(hashedData);
    if (storedExpirationTime == null) return false;

    if (!_validateExpiry(storedExpirationTime)) {
      return false;
    }

    /// Creates new hash from the data and compares it to the stored hash.
    var hash = _generateHashData(
      phoneNumber: phoneNumber,
      otp: otp,
      expirationTime: storedExpirationTime,
    );

    var isValid = hash == hashedData;
    if (!isValid) {
      print(
        'Expected hash $hashedData for number $phoneNumber with otp $otp, but calculated hash is $hash',
      );
      _logFailedSignIn(session, phoneNumber);
    }

    return isValid;
  }

  static DateTime? _getHashExpirationTime(String hash) {
    var parts = hash.split('@');
    if (parts.length != 2) {
      return null;
    }
    var storedExpirationTime = DateTime.parse(parts[1]);
    return storedExpirationTime;
  }

  static bool _validateExpiry(DateTime expirationTime) {
    var currentTime = DateTime.now();
    return currentTime.isBefore(expirationTime);
  }

  static String _generateHashData(
      {required String phoneNumber,
      required String otp,
      DateTime? expirationTime}) {
    var secretHashKey =
        Serverpod.instance.getPassword('SMSHash') ?? 'serverpod SMS hash';
    expirationTime ??=
        DateTime.now().add((PhoneAuthConfig.current).phoneExpirationTime);

    var dataToHash = '$phoneNumber$otp$secretHashKey';
    var hmac = Hmac(sha256, utf8.encode(secretHashKey));
    var digest = hmac.convert(utf8.encode(dataToHash));
    var hashedData = digest.toString();

    var hash = '$hashedData@${expirationTime.toIso8601String()}';

    return hash;
  }

  static Future<bool> _hasTooManyFailedSignIns(
    Session session,
    String phoneNumber,
  ) async {
    var numFailedSingIns = await PhoneFailedSignIn.db.count(
      session,
      where: (t) =>
          t.phoneNumber.equals(phoneNumber) &
          (t.time >
              DateTime.now()
                  .toUtc()
                  .subtract(PhoneAuthConfig.current.phoneExpirationTime)),
    );
    return numFailedSingIns >=
        PhoneAuthConfig.current.maxAllowedTelegramSignInAttempts;
  }

  static Future<void> _logFailedSignIn(
    Session session,
    String phoneNumber,
  ) async {
    session as MethodCallSession;
    var failedSignIn = PhoneFailedSignIn(
      phoneNumber: phoneNumber,
      time: DateTime.now(),
      ipAddress: session.httpRequest.remoteIpAddress,
    );
    await PhoneFailedSignIn.db.insertRow(session, failedSignIn);
  }

  /// Generates a new PhoneAuthConfig.current.validationCodeLength digit OTP.
  static String _generateOTP() {
    return Random().nextString(
      length: PhoneAuthConfig.current.validationCodeLength,
      chars: '0123456789',
    );
  }
}
