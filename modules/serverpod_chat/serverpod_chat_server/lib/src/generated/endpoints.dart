/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/channels_endpoint.dart' as _i2;
import '../endpoints/chat_endpoint.dart' as _i3;
import '../endpoints/type_status_endpoint.dart' as _i4;
import 'dart:typed_data' as _i5;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'channels': _i2.ChannelsEndpoint()
        ..initialize(
          server,
          'channels',
          'serverpod_chat',
        ),
      'chat': _i3.ChatEndpoint()
        ..initialize(
          server,
          'chat',
          'serverpod_chat',
        ),
      'typingIndicator': _i4.TypingIndicatorEndpoint()
        ..initialize(
          server,
          'typingIndicator',
          'serverpod_chat',
        ),
    };
    connectors['channels'] = _i1.EndpointConnector(
      name: 'channels',
      endpoint: endpoints['channels']!,
      methodConnectors: {
        'deleteChannel': _i1.MethodConnector(
          name: 'deleteChannel',
          params: {
            'channelId': _i1.ParameterDescription(
              name: 'channelId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['channels'] as _i2.ChannelsEndpoint).deleteChannel(
            session,
            params['channelId'],
          ),
        ),
        'getPrivateChannels': _i1.MethodConnector(
          name: 'getPrivateChannels',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['channels'] as _i2.ChannelsEndpoint)
                  .getPrivateChannels(session),
        ),
        'getPrivateChatChannel': _i1.MethodConnector(
          name: 'getPrivateChatChannel',
          params: {
            'recipientId': _i1.ParameterDescription(
              name: 'recipientId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'adId': _i1.ParameterDescription(
              name: 'adId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['channels'] as _i2.ChannelsEndpoint)
                  .getPrivateChatChannel(
            session,
            params['recipientId'],
            params['adId'],
          ),
        ),
        'getPublicChatChannel': _i1.MethodConnector(
          name: 'getPublicChatChannel',
          params: {
            'adId': _i1.ParameterDescription(
              name: 'adId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['channels'] as _i2.ChannelsEndpoint)
                  .getPublicChatChannel(
            session,
            params['adId'],
          ),
        ),
        'hasChannelNewMessages': _i1.MethodConnector(
          name: 'hasChannelNewMessages',
          params: {
            'channelId': _i1.ParameterDescription(
              name: 'channelId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['channels'] as _i2.ChannelsEndpoint)
                  .hasChannelNewMessages(
            session,
            params['channelId'],
          ),
        ),
        'hasUnreadMessages': _i1.MethodConnector(
          name: 'hasUnreadMessages',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['channels'] as _i2.ChannelsEndpoint)
                  .hasUnreadMessages(session),
        ),
      },
    );
    connectors['chat'] = _i1.EndpointConnector(
      name: 'chat',
      endpoint: endpoints['chat']!,
      methodConnectors: {
        'createAttachmentUploadDescription': _i1.MethodConnector(
          name: 'createAttachmentUploadDescription',
          params: {
            'fileName': _i1.ParameterDescription(
              name: 'fileName',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['chat'] as _i3.ChatEndpoint)
                  .createAttachmentUploadDescription(
            session,
            params['fileName'],
          ),
        ),
        'verifyAttachmentUpload': _i1.MethodConnector(
          name: 'verifyAttachmentUpload',
          params: {
            'fileName': _i1.ParameterDescription(
              name: 'fileName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'filePath': _i1.ParameterDescription(
              name: 'filePath',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['chat'] as _i3.ChatEndpoint).verifyAttachmentUpload(
            session,
            params['fileName'],
            params['filePath'],
          ),
        ),
        'uploadAttachment': _i1.MethodConnector(
          name: 'uploadAttachment',
          params: {
            'byteData': _i1.ParameterDescription(
              name: 'byteData',
              type: _i1.getType<_i5.ByteData>(),
              nullable: false,
            ),
            'fileName': _i1.ParameterDescription(
              name: 'fileName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['chat'] as _i3.ChatEndpoint).uploadAttachment(
            session,
            params['byteData'],
            params['fileName'],
          ),
        ),
      },
    );
    connectors['typingIndicator'] = _i1.EndpointConnector(
      name: 'typingIndicator',
      endpoint: endpoints['typingIndicator']!,
      methodConnectors: {},
    );
    modules['serverpod_auth'] = _i6.Endpoints()..initializeEndpoints(server);
  }
}
