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

abstract class ChatException
    implements _i1.SerializableException, _i1.SerializableModel {
  ChatException._({
    required this.message,
    required this.type,
  });

  factory ChatException({
    required String message,
    required _i2.ChatExceptionType type,
  }) = _ChatExceptionImpl;

  factory ChatException.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatException(
      message: jsonSerialization['message'] as String,
      type: _i2.ChatExceptionType.fromJson((jsonSerialization['type'] as int)),
    );
  }

  String message;

  _i2.ChatExceptionType type;

  ChatException copyWith({
    String? message,
    _i2.ChatExceptionType? type,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'type': type.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _ChatExceptionImpl extends ChatException {
  _ChatExceptionImpl({
    required String message,
    required _i2.ChatExceptionType type,
  }) : super._(
          message: message,
          type: type,
        );

  @override
  ChatException copyWith({
    String? message,
    _i2.ChatExceptionType? type,
  }) {
    return ChatException(
      message: message ?? this.message,
      type: type ?? this.type,
    );
  }
}
