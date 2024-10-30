import 'package:serverpod/serverpod.dart';
import 'package:serverpod_chat_server/serverpod_chat_server.dart';

abstract class ChannelsEndpointInterface {
  Future<void> streamOpened(StreamingSession session);
  Future<void> handleStreamMessage(
      StreamingSession session, SerializableModel message);
  Future<void> streamClosed(StreamingSession session);

  Future<List<ChannelInfo>> getPrivateChannels(Session session);

  Future<ChannelInfo> getPrivateChatChannel(
      Session session, int? recipientId, int? adId);

  Future<bool?> hasChannelNewMessages(Session session, int channelId);

  Future<bool> hasUnreadMessages(Session session);

  Future<ChannelInfo> getPublicChatChannel(Session session, int adId);

  Future<bool> deleteChannel(Session session, int channelId);
}
