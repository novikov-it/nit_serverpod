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
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class ChannelInfo implements _i1.SerializableModel {
  ChannelInfo._({
    this.id,
    required this.channel,
    required this.isPrivate,
    this.chatWith,
    this.lastMessage,
    required this.hasUnreadMessages,
  });

  factory ChannelInfo({
    int? id,
    required String channel,
    required bool isPrivate,
    _i2.UserInfo? chatWith,
    _i3.ChatMessage? lastMessage,
    required bool hasUnreadMessages,
  }) = _ChannelInfoImpl;

  factory ChannelInfo.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChannelInfo(
      id: jsonSerialization['id'] as int?,
      channel: jsonSerialization['channel'] as String,
      isPrivate: jsonSerialization['isPrivate'] as bool,
      chatWith: jsonSerialization['chatWith'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['chatWith'] as Map<String, dynamic>)),
      lastMessage: jsonSerialization['lastMessage'] == null
          ? null
          : _i3.ChatMessage.fromJson(
              (jsonSerialization['lastMessage'] as Map<String, dynamic>)),
      hasUnreadMessages: jsonSerialization['hasUnreadMessages'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// Channel identifier
  String channel;

  bool isPrivate;

  _i2.UserInfo? chatWith;

  _i3.ChatMessage? lastMessage;

  bool hasUnreadMessages;

  ChannelInfo copyWith({
    int? id,
    String? channel,
    bool? isPrivate,
    _i2.UserInfo? chatWith,
    _i3.ChatMessage? lastMessage,
    bool? hasUnreadMessages,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'channel': channel,
      'isPrivate': isPrivate,
      if (chatWith != null) 'chatWith': chatWith?.toJson(),
      if (lastMessage != null) 'lastMessage': lastMessage?.toJson(),
      'hasUnreadMessages': hasUnreadMessages,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChannelInfoImpl extends ChannelInfo {
  _ChannelInfoImpl({
    int? id,
    required String channel,
    required bool isPrivate,
    _i2.UserInfo? chatWith,
    _i3.ChatMessage? lastMessage,
    required bool hasUnreadMessages,
  }) : super._(
          id: id,
          channel: channel,
          isPrivate: isPrivate,
          chatWith: chatWith,
          lastMessage: lastMessage,
          hasUnreadMessages: hasUnreadMessages,
        );

  @override
  ChannelInfo copyWith({
    Object? id = _Undefined,
    String? channel,
    bool? isPrivate,
    Object? chatWith = _Undefined,
    Object? lastMessage = _Undefined,
    bool? hasUnreadMessages,
  }) {
    return ChannelInfo(
      id: id is int? ? id : this.id,
      channel: channel ?? this.channel,
      isPrivate: isPrivate ?? this.isPrivate,
      chatWith:
          chatWith is _i2.UserInfo? ? chatWith : this.chatWith?.copyWith(),
      lastMessage: lastMessage is _i3.ChatMessage?
          ? lastMessage
          : this.lastMessage?.copyWith(),
      hasUnreadMessages: hasUnreadMessages ?? this.hasUnreadMessages,
    );
  }
}
