import 'dart:math';

import 'package:collection/collection.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';
import 'package:serverpod_chat_server/module.dart';
import 'package:serverpod_chat_server/src/interface/channel_interface.dart';

class ChannelsEndpoint extends Endpoint implements ChannelsEndpointInterface {
  @override
  Future<bool> deleteChannel(Session session, int channelId) {
    // TODO: implement deleteChannel
    throw UnimplementedError();
  }

  @override
  Future<List<ChannelInfo>> getPrivateChannels(Session session) {
    // TODO: implement getPrivateChannels
    throw UnimplementedError();
  }

  @override
  Future<ChannelInfo> getPrivateChatChannel(
      Session session, int? recipientId, int? adId) {
    // TODO: implement getPrivateChatChannel
    throw UnimplementedError();
  }

  @override
  Future<ChannelInfo> getPublicChatChannel(Session session, int adId) {
    // TODO: implement getPublicChatChannel
    throw UnimplementedError();
  }

  @override
  Future<bool?> hasChannelNewMessages(Session session, int channelId) {
    // TODO: implement hasChannelNewMessages
    throw UnimplementedError();
  }

  @override
  Future<bool> hasUnreadMessages(Session session) {
    // TODO: implement hasUnreadMessages
    throw UnimplementedError();
  }
  // Реализация всех методов интерфейса
  // ...
}
