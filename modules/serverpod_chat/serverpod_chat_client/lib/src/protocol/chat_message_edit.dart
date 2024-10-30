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

/// A chat message edit request.
abstract class ChatMessageEdit implements _i1.SerializableModel {
  ChatMessageEdit._({
    required this.messageId,
    required this.message,
    required this.removed,
    this.reactions,
    this.reactionsUsers,
    this.attachments,
  });

  factory ChatMessageEdit({
    required int messageId,
    required String message,
    required bool removed,
    List<String>? reactions,
    List<String>? reactionsUsers,
    List<_i2.ChatMessageAttachment>? attachments,
  }) = _ChatMessageEditImpl;

  factory ChatMessageEdit.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatMessageEdit(
      messageId: jsonSerialization['messageId'] as int,
      message: jsonSerialization['message'] as String,
      removed: jsonSerialization['removed'] as bool,
      reactions: (jsonSerialization['reactions'] as List?)
          ?.map((e) => e as String)
          .toList(),
      reactionsUsers: (jsonSerialization['reactionsUsers'] as List?)
          ?.map((e) => e as String)
          .toList(),
      attachments: (jsonSerialization['attachments'] as List?)
          ?.map((e) =>
              _i2.ChatMessageAttachment.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The channel this message is posted to.
  int messageId;

  String message;

  bool removed;

  List<String>? reactions;

  List<String>? reactionsUsers;

  /// List of attachments associated with this message.
  List<_i2.ChatMessageAttachment>? attachments;

  ChatMessageEdit copyWith({
    int? messageId,
    String? message,
    bool? removed,
    List<String>? reactions,
    List<String>? reactionsUsers,
    List<_i2.ChatMessageAttachment>? attachments,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'messageId': messageId,
      'message': message,
      'removed': removed,
      if (reactions != null) 'reactions': reactions?.toJson(),
      if (reactionsUsers != null) 'reactionsUsers': reactionsUsers?.toJson(),
      if (attachments != null)
        'attachments': attachments?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChatMessageEditImpl extends ChatMessageEdit {
  _ChatMessageEditImpl({
    required int messageId,
    required String message,
    required bool removed,
    List<String>? reactions,
    List<String>? reactionsUsers,
    List<_i2.ChatMessageAttachment>? attachments,
  }) : super._(
          messageId: messageId,
          message: message,
          removed: removed,
          reactions: reactions,
          reactionsUsers: reactionsUsers,
          attachments: attachments,
        );

  @override
  ChatMessageEdit copyWith({
    int? messageId,
    String? message,
    bool? removed,
    Object? reactions = _Undefined,
    Object? reactionsUsers = _Undefined,
    Object? attachments = _Undefined,
  }) {
    return ChatMessageEdit(
      messageId: messageId ?? this.messageId,
      message: message ?? this.message,
      removed: removed ?? this.removed,
      reactions: reactions is List<String>?
          ? reactions
          : this.reactions?.map((e0) => e0).toList(),
      reactionsUsers: reactionsUsers is List<String>?
          ? reactionsUsers
          : this.reactionsUsers?.map((e0) => e0).toList(),
      attachments: attachments is List<_i2.ChatMessageAttachment>?
          ? attachments
          : this.attachments?.map((e0) => e0.copyWith()).toList(),
    );
  }
}
