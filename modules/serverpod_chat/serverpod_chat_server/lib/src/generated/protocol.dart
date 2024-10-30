/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'chat_attachment_type_enum.dart' as _i4;
import 'chat_channel.dart' as _i5;
import 'chat_exception.dart' as _i6;
import 'chat_exception_type.dart' as _i7;
import 'chat_join_channel.dart' as _i8;
import 'chat_join_channel_failed.dart' as _i9;
import 'chat_joined_channel.dart' as _i10;
import 'chat_leave_channel.dart' as _i11;
import 'chat_message.dart' as _i12;
import 'chat_message_attachment.dart' as _i13;
import 'chat_message_attachment_upload_description.dart' as _i14;
import 'chat_message_chunk.dart' as _i15;
import 'chat_message_edit.dart' as _i16;
import 'chat_message_post.dart' as _i17;
import 'chat_message_reaction.dart' as _i18;
import 'chat_read_message.dart' as _i19;
import 'chat_relation.dart' as _i20;
import 'chat_request_message_chunk.dart' as _i21;
import 'type_indicator.dart' as _i22;
import 'protocol.dart' as _i23;
import 'package:serverpod_chat_server/src/generated/chat_channel.dart' as _i24;
export 'chat_attachment_type_enum.dart';
export 'chat_channel.dart';
export 'chat_exception.dart';
export 'chat_exception_type.dart';
export 'chat_join_channel.dart';
export 'chat_join_channel_failed.dart';
export 'chat_joined_channel.dart';
export 'chat_leave_channel.dart';
export 'chat_message.dart';
export 'chat_message_attachment.dart';
export 'chat_message_attachment_upload_description.dart';
export 'chat_message_chunk.dart';
export 'chat_message_edit.dart';
export 'chat_message_post.dart';
export 'chat_message_reaction.dart';
export 'chat_read_message.dart';
export 'chat_relation.dart';
export 'chat_request_message_chunk.dart';
export 'type_indicator.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'chat_channel',
      dartName: 'ChannelInfo',
      schema: 'public',
      module: 'serverpod_chat',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'chat_channel_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'channel',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'isPrivate',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'hasUnreadMessages',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'chat_channel_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'chat_relation',
      dartName: 'ChatRelation',
      schema: 'public',
      module: 'serverpod_chat',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'chat_relation_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'chatChannelId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'chat_relation_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'chat_relation_user_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'serverpod_chat_message',
      dartName: 'ChatMessage',
      schema: 'public',
      module: 'serverpod_chat',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'serverpod_chat_message_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'channel',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'message',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'time',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'sender',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'removed',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'attachments',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'List<protocol:ChatMessageAttachment>?',
        ),
        _i2.ColumnDefinition(
          name: 'reactions',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
        _i2.ColumnDefinition(
          name: 'reactionsUsers',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
        _i2.ColumnDefinition(
          name: 'replyMessages',
          columnType: _i2.ColumnType.json,
          isNullable: true,
          dartType: 'Map<String,String>?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'serverpod_chat_message_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'serverpod_chat_message_channel_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'channel',
            )
          ],
          type: 'btree',
          isUnique: false,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'serverpod_chat_read_message',
      dartName: 'ChatReadMessage',
      schema: 'public',
      module: 'serverpod_chat',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault:
              'nextval(\'serverpod_chat_read_message_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'channel',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'lastReadMessageId',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'serverpod_chat_read_message_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'serverpod_chat_read_message_channel_user_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'channel',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i4.ChatAttachmentTypeEnum) {
      return _i4.ChatAttachmentTypeEnum.fromJson(data) as T;
    }
    if (t == _i5.ChannelInfo) {
      return _i5.ChannelInfo.fromJson(data) as T;
    }
    if (t == _i6.ChatException) {
      return _i6.ChatException.fromJson(data) as T;
    }
    if (t == _i7.ChatExceptionType) {
      return _i7.ChatExceptionType.fromJson(data) as T;
    }
    if (t == _i8.ChatJoinChannel) {
      return _i8.ChatJoinChannel.fromJson(data) as T;
    }
    if (t == _i9.ChatJoinChannelFailed) {
      return _i9.ChatJoinChannelFailed.fromJson(data) as T;
    }
    if (t == _i10.ChatJoinedChannel) {
      return _i10.ChatJoinedChannel.fromJson(data) as T;
    }
    if (t == _i11.ChatLeaveChannel) {
      return _i11.ChatLeaveChannel.fromJson(data) as T;
    }
    if (t == _i12.ChatMessage) {
      return _i12.ChatMessage.fromJson(data) as T;
    }
    if (t == _i13.ChatMessageAttachment) {
      return _i13.ChatMessageAttachment.fromJson(data) as T;
    }
    if (t == _i14.ChatMessageAttachmentUploadDescription) {
      return _i14.ChatMessageAttachmentUploadDescription.fromJson(data) as T;
    }
    if (t == _i15.ChatMessageChunk) {
      return _i15.ChatMessageChunk.fromJson(data) as T;
    }
    if (t == _i16.ChatMessageEdit) {
      return _i16.ChatMessageEdit.fromJson(data) as T;
    }
    if (t == _i17.ChatMessagePost) {
      return _i17.ChatMessagePost.fromJson(data) as T;
    }
    if (t == _i18.ChatMessageReaction) {
      return _i18.ChatMessageReaction.fromJson(data) as T;
    }
    if (t == _i19.ChatReadMessage) {
      return _i19.ChatReadMessage.fromJson(data) as T;
    }
    if (t == _i20.ChatRelation) {
      return _i20.ChatRelation.fromJson(data) as T;
    }
    if (t == _i21.ChatRequestMessageChunk) {
      return _i21.ChatRequestMessageChunk.fromJson(data) as T;
    }
    if (t == _i22.TypeIndicator) {
      return _i22.TypeIndicator.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.ChatAttachmentTypeEnum?>()) {
      return (data != null ? _i4.ChatAttachmentTypeEnum.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i5.ChannelInfo?>()) {
      return (data != null ? _i5.ChannelInfo.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.ChatException?>()) {
      return (data != null ? _i6.ChatException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.ChatExceptionType?>()) {
      return (data != null ? _i7.ChatExceptionType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.ChatJoinChannel?>()) {
      return (data != null ? _i8.ChatJoinChannel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.ChatJoinChannelFailed?>()) {
      return (data != null ? _i9.ChatJoinChannelFailed.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i10.ChatJoinedChannel?>()) {
      return (data != null ? _i10.ChatJoinedChannel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.ChatLeaveChannel?>()) {
      return (data != null ? _i11.ChatLeaveChannel.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.ChatMessage?>()) {
      return (data != null ? _i12.ChatMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.ChatMessageAttachment?>()) {
      return (data != null ? _i13.ChatMessageAttachment.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i14.ChatMessageAttachmentUploadDescription?>()) {
      return (data != null
          ? _i14.ChatMessageAttachmentUploadDescription.fromJson(data)
          : null) as T;
    }
    if (t == _i1.getType<_i15.ChatMessageChunk?>()) {
      return (data != null ? _i15.ChatMessageChunk.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.ChatMessageEdit?>()) {
      return (data != null ? _i16.ChatMessageEdit.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.ChatMessagePost?>()) {
      return (data != null ? _i17.ChatMessagePost.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.ChatMessageReaction?>()) {
      return (data != null ? _i18.ChatMessageReaction.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i19.ChatReadMessage?>()) {
      return (data != null ? _i19.ChatReadMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.ChatRelation?>()) {
      return (data != null ? _i20.ChatRelation.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.ChatRequestMessageChunk?>()) {
      return (data != null ? _i21.ChatRequestMessageChunk.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i22.TypeIndicator?>()) {
      return (data != null ? _i22.TypeIndicator.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i23.ChatMessageAttachment>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i23.ChatMessageAttachment>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<Map<String, String>?>()) {
      return (data != null
          ? (data as Map).map((k, v) =>
              MapEntry(deserialize<String>(k), deserialize<String>(v)))
          : null) as dynamic;
    }
    if (t == List<_i23.ChatMessage>) {
      return (data as List)
          .map((e) => deserialize<_i23.ChatMessage>(e))
          .toList() as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i23.ChatMessageAttachment>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i23.ChatMessageAttachment>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i23.ChatMessageAttachment>?>()) {
      return (data != null
          ? (data as List)
              .map((e) => deserialize<_i23.ChatMessageAttachment>(e))
              .toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<Map<String, String>?>()) {
      return (data != null
          ? (data as Map).map((k, v) =>
              MapEntry(deserialize<String>(k), deserialize<String>(v)))
          : null) as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<String>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<String>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i24.ChannelInfo>) {
      return (data as List)
          .map((e) => deserialize<_i24.ChannelInfo>(e))
          .toList() as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i4.ChatAttachmentTypeEnum) {
      return 'ChatAttachmentTypeEnum';
    }
    if (data is _i5.ChannelInfo) {
      return 'ChannelInfo';
    }
    if (data is _i6.ChatException) {
      return 'ChatException';
    }
    if (data is _i7.ChatExceptionType) {
      return 'ChatExceptionType';
    }
    if (data is _i8.ChatJoinChannel) {
      return 'ChatJoinChannel';
    }
    if (data is _i9.ChatJoinChannelFailed) {
      return 'ChatJoinChannelFailed';
    }
    if (data is _i10.ChatJoinedChannel) {
      return 'ChatJoinedChannel';
    }
    if (data is _i11.ChatLeaveChannel) {
      return 'ChatLeaveChannel';
    }
    if (data is _i12.ChatMessage) {
      return 'ChatMessage';
    }
    if (data is _i13.ChatMessageAttachment) {
      return 'ChatMessageAttachment';
    }
    if (data is _i14.ChatMessageAttachmentUploadDescription) {
      return 'ChatMessageAttachmentUploadDescription';
    }
    if (data is _i15.ChatMessageChunk) {
      return 'ChatMessageChunk';
    }
    if (data is _i16.ChatMessageEdit) {
      return 'ChatMessageEdit';
    }
    if (data is _i17.ChatMessagePost) {
      return 'ChatMessagePost';
    }
    if (data is _i18.ChatMessageReaction) {
      return 'ChatMessageReaction';
    }
    if (data is _i19.ChatReadMessage) {
      return 'ChatReadMessage';
    }
    if (data is _i20.ChatRelation) {
      return 'ChatRelation';
    }
    if (data is _i21.ChatRequestMessageChunk) {
      return 'ChatRequestMessageChunk';
    }
    if (data is _i22.TypeIndicator) {
      return 'TypeIndicator';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod.$className';
    }
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'ChatAttachmentTypeEnum') {
      return deserialize<_i4.ChatAttachmentTypeEnum>(data['data']);
    }
    if (data['className'] == 'ChannelInfo') {
      return deserialize<_i5.ChannelInfo>(data['data']);
    }
    if (data['className'] == 'ChatException') {
      return deserialize<_i6.ChatException>(data['data']);
    }
    if (data['className'] == 'ChatExceptionType') {
      return deserialize<_i7.ChatExceptionType>(data['data']);
    }
    if (data['className'] == 'ChatJoinChannel') {
      return deserialize<_i8.ChatJoinChannel>(data['data']);
    }
    if (data['className'] == 'ChatJoinChannelFailed') {
      return deserialize<_i9.ChatJoinChannelFailed>(data['data']);
    }
    if (data['className'] == 'ChatJoinedChannel') {
      return deserialize<_i10.ChatJoinedChannel>(data['data']);
    }
    if (data['className'] == 'ChatLeaveChannel') {
      return deserialize<_i11.ChatLeaveChannel>(data['data']);
    }
    if (data['className'] == 'ChatMessage') {
      return deserialize<_i12.ChatMessage>(data['data']);
    }
    if (data['className'] == 'ChatMessageAttachment') {
      return deserialize<_i13.ChatMessageAttachment>(data['data']);
    }
    if (data['className'] == 'ChatMessageAttachmentUploadDescription') {
      return deserialize<_i14.ChatMessageAttachmentUploadDescription>(
          data['data']);
    }
    if (data['className'] == 'ChatMessageChunk') {
      return deserialize<_i15.ChatMessageChunk>(data['data']);
    }
    if (data['className'] == 'ChatMessageEdit') {
      return deserialize<_i16.ChatMessageEdit>(data['data']);
    }
    if (data['className'] == 'ChatMessagePost') {
      return deserialize<_i17.ChatMessagePost>(data['data']);
    }
    if (data['className'] == 'ChatMessageReaction') {
      return deserialize<_i18.ChatMessageReaction>(data['data']);
    }
    if (data['className'] == 'ChatReadMessage') {
      return deserialize<_i19.ChatReadMessage>(data['data']);
    }
    if (data['className'] == 'ChatRelation') {
      return deserialize<_i20.ChatRelation>(data['data']);
    }
    if (data['className'] == 'ChatRequestMessageChunk') {
      return deserialize<_i21.ChatRequestMessageChunk>(data['data']);
    }
    if (data['className'] == 'TypeIndicator') {
      return deserialize<_i22.TypeIndicator>(data['data']);
    }
    if (data['className'].startsWith('serverpod.')) {
      data['className'] = data['className'].substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i5.ChannelInfo:
        return _i5.ChannelInfo.t;
      case _i12.ChatMessage:
        return _i12.ChatMessage.t;
      case _i19.ChatReadMessage:
        return _i19.ChatReadMessage.t;
      case _i20.ChatRelation:
        return _i20.ChatRelation.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'serverpod_chat';
}
