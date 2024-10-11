import 'package:flutter/material.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';
import 'package:serverpod_auth_phone_flutter/src/controller.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

class VerifyOTPButton extends StatelessWidget {
  const VerifyOTPButton({
    super.key,
    required this.sessionManager,
    required this.button,
    required this.phoneNumber,
    required this.otp,
    required this.onSuccess,
    required this.onError,
  });

  final SessionManager sessionManager;
  final ElevatedButton button;
  final String Function() phoneNumber;
  final String Function() otp;

  final Function(UserInfo) onSuccess;
  final VoidCallback onError;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final userInfo = await PhoneAuthController(sessionManager)
            .verifyOTP(phoneNumber(), otp());
        if (userInfo != null) {
          onSuccess(userInfo);
        } else {
          onError();
        }
      },
      style: button.style,
      clipBehavior: button.clipBehavior,
      child: button.child, //TODO: add all params here
    );
  }
}
