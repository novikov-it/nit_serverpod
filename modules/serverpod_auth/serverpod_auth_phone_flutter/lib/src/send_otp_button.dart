import 'package:flutter/material.dart';
import 'package:serverpod_auth_client/serverpod_auth_client.dart';
import 'package:serverpod_auth_phone_flutter/src/controller.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

class SendOTPButton extends StatelessWidget {
  const SendOTPButton({
    super.key,
    required this.phoneNumber,
    required this.sessionManager,
    required this.onSuccess,
    required this.onError,
    this.button,
  });

  final ElevatedButton? button;
  final SessionManager sessionManager;

  final String Function() phoneNumber;
  final VoidCallback onSuccess;
  final Function(String? error) onError;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final isSend =
            await PhoneAuthController(sessionManager).sendOTP(phoneNumber());
        if (isSend.success) {
          onSuccess();
        } else {
          onError(isSend.failText);
        }
      },
      style: button?.style,
      clipBehavior: button?.clipBehavior,
      child: button?.child, //TODO: add all params here
    );
  }
}
