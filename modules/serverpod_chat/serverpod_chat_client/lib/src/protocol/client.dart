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
import 'dart:async' as _i2;
import 'package:serverpod_chat_client/src/protocol/chat_channel.dart' as _i3;
import 'package:serverpod_chat_client/src/protocol/chat_message_attachment_upload_description.dart'
    as _i4;
import 'package:serverpod_chat_client/src/protocol/chat_message_attachment.dart'
    as _i5;
import 'dart:typed_data' as _i6;

/// {@category Endpoint}
class EndpointChannels extends _i1.EndpointRef {
  EndpointChannels(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'serverpod_chat.channels';

  _i2.Future<bool> deleteChannel(int channelId) =>
      caller.callServerEndpoint<bool>(
        'serverpod_chat.channels',
        'deleteChannel',
        {'channelId': channelId},
      );

  _i2.Future<List<_i3.ChannelInfo>> getPrivateChannels() =>
      caller.callServerEndpoint<List<_i3.ChannelInfo>>(
        'serverpod_chat.channels',
        'getPrivateChannels',
        {},
      );

  _i2.Future<_i3.ChannelInfo> getPrivateChatChannel(
    int? recipientId,
    int? adId,
  ) =>
      caller.callServerEndpoint<_i3.ChannelInfo>(
        'serverpod_chat.channels',
        'getPrivateChatChannel',
        {
          'recipientId': recipientId,
          'adId': adId,
        },
      );

  _i2.Future<_i3.ChannelInfo> getPublicChatChannel(int adId) =>
      caller.callServerEndpoint<_i3.ChannelInfo>(
        'serverpod_chat.channels',
        'getPublicChatChannel',
        {'adId': adId},
      );

  _i2.Future<bool?> hasChannelNewMessages(int channelId) =>
      caller.callServerEndpoint<bool?>(
        'serverpod_chat.channels',
        'hasChannelNewMessages',
        {'channelId': channelId},
      );

  _i2.Future<bool> hasUnreadMessages() => caller.callServerEndpoint<bool>(
        'serverpod_chat.channels',
        'hasUnreadMessages',
        {},
      );
}

/// Connect to the chat endpoint to send and receive chat messages.
/// {@category Endpoint}
class EndpointChat extends _i1.EndpointRef {
  EndpointChat(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'serverpod_chat.chat';

  /// Creates a description for uploading an attachment.
  _i2.Future<_i4.ChatMessageAttachmentUploadDescription?>
      createAttachmentUploadDescription(String fileName) => caller
              .callServerEndpoint<_i4.ChatMessageAttachmentUploadDescription?>(
            'serverpod_chat.chat',
            'createAttachmentUploadDescription',
            {'fileName': fileName},
          );

  /// Verifies that an attachment has been uploaded.
  _i2.Future<_i5.ChatMessageAttachment?> verifyAttachmentUpload(
    String fileName,
    String filePath,
  ) =>
      caller.callServerEndpoint<_i5.ChatMessageAttachment?>(
        'serverpod_chat.chat',
        'verifyAttachmentUpload',
        {
          'fileName': fileName,
          'filePath': filePath,
        },
      );

  /// Uploads an attachment. Returns url.
  _i2.Future<_i5.ChatMessageAttachment?> uploadAttachment(
    _i6.ByteData byteData,
    String fileName,
  ) =>
      caller.callServerEndpoint<_i5.ChatMessageAttachment?>(
        'serverpod_chat.chat',
        'uploadAttachment',
        {
          'byteData': byteData,
          'fileName': fileName,
        },
      );
}

/// Connect to the type status endpoint to send and receive typing status.
/// {@category Endpoint}
class EndpointTypingIndicator extends _i1.EndpointRef {
  EndpointTypingIndicator(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'serverpod_chat.typingIndicator';
}

class Caller extends _i1.ModuleEndpointCaller {
  Caller(_i1.ServerpodClientShared client) : super(client) {
    channels = EndpointChannels(this);
    chat = EndpointChat(this);
    typingIndicator = EndpointTypingIndicator(this);
  }

  late final EndpointChannels channels;

  late final EndpointChat chat;

  late final EndpointTypingIndicator typingIndicator;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'serverpod_chat.channels': channels,
        'serverpod_chat.chat': chat,
        'serverpod_chat.typingIndicator': typingIndicator,
      };
}
