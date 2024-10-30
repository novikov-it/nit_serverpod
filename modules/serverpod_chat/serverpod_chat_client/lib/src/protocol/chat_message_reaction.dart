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

/// A chat message reaction request.
abstract class ChatMessageReaction implements _i1.SerializableModel {
  ChatMessageReaction._({
    required this.messageId,
    this.reactions,
    this.reactionsUsers,
  });

  factory ChatMessageReaction({
    required int messageId,
    List<String>? reactions,
    List<String>? reactionsUsers,
  }) = _ChatMessageReactionImpl;

  factory ChatMessageReaction.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatMessageReaction(
      messageId: jsonSerialization['messageId'] as int,
      reactions: (jsonSerialization['reactions'] as List?)
          ?.map((e) => e as String)
          .toList(),
      reactionsUsers: (jsonSerialization['reactionsUsers'] as List?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  /// The channel this message is posted to.
  int messageId;

  List<String>? reactions;

  List<String>? reactionsUsers;

  ChatMessageReaction copyWith({
    int? messageId,
    List<String>? reactions,
    List<String>? reactionsUsers,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'messageId': messageId,
      if (reactions != null) 'reactions': reactions?.toJson(),
      if (reactionsUsers != null) 'reactionsUsers': reactionsUsers?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChatMessageReactionImpl extends ChatMessageReaction {
  _ChatMessageReactionImpl({
    required int messageId,
    List<String>? reactions,
    List<String>? reactionsUsers,
  }) : super._(
          messageId: messageId,
          reactions: reactions,
          reactionsUsers: reactionsUsers,
        );

  @override
  ChatMessageReaction copyWith({
    int? messageId,
    Object? reactions = _Undefined,
    Object? reactionsUsers = _Undefined,
  }) {
    return ChatMessageReaction(
      messageId: messageId ?? this.messageId,
      reactions: reactions is List<String>?
          ? reactions
          : this.reactions?.map((e0) => e0).toList(),
      reactionsUsers: reactionsUsers is List<String>?
          ? reactionsUsers
          : this.reactionsUsers?.map((e0) => e0).toList(),
    );
  }
}
