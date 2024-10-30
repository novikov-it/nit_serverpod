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
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class ChannelInfo implements _i1.TableRow, _i1.ProtocolSerialization {
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

  static final t = ChannelInfoTable();

  static const db = ChannelInfoRepository._();

  @override
  int? id;

  /// Channel identifier
  String channel;

  bool isPrivate;

  _i2.UserInfo? chatWith;

  _i3.ChatMessage? lastMessage;

  bool hasUnreadMessages;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'channel': channel,
      'isPrivate': isPrivate,
      if (chatWith != null) 'chatWith': chatWith?.toJsonForProtocol(),
      if (lastMessage != null) 'lastMessage': lastMessage?.toJsonForProtocol(),
      'hasUnreadMessages': hasUnreadMessages,
    };
  }

  static ChannelInfoInclude include() {
    return ChannelInfoInclude._();
  }

  static ChannelInfoIncludeList includeList({
    _i1.WhereExpressionBuilder<ChannelInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChannelInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChannelInfoTable>? orderByList,
    ChannelInfoInclude? include,
  }) {
    return ChannelInfoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChannelInfo.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ChannelInfo.t),
      include: include,
    );
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

class ChannelInfoTable extends _i1.Table {
  ChannelInfoTable({super.tableRelation}) : super(tableName: 'chat_channel') {
    channel = _i1.ColumnString(
      'channel',
      this,
    );
    isPrivate = _i1.ColumnBool(
      'isPrivate',
      this,
    );
    hasUnreadMessages = _i1.ColumnBool(
      'hasUnreadMessages',
      this,
    );
  }

  /// Channel identifier
  late final _i1.ColumnString channel;

  late final _i1.ColumnBool isPrivate;

  late final _i1.ColumnBool hasUnreadMessages;

  @override
  List<_i1.Column> get columns => [
        id,
        channel,
        isPrivate,
        hasUnreadMessages,
      ];
}

class ChannelInfoInclude extends _i1.IncludeObject {
  ChannelInfoInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ChannelInfo.t;
}

class ChannelInfoIncludeList extends _i1.IncludeList {
  ChannelInfoIncludeList._({
    _i1.WhereExpressionBuilder<ChannelInfoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ChannelInfo.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ChannelInfo.t;
}

class ChannelInfoRepository {
  const ChannelInfoRepository._();

  Future<List<ChannelInfo>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ChannelInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChannelInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChannelInfoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<ChannelInfo>(
      where: where?.call(ChannelInfo.t),
      orderBy: orderBy?.call(ChannelInfo.t),
      orderByList: orderByList?.call(ChannelInfo.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChannelInfo?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ChannelInfoTable>? where,
    int? offset,
    _i1.OrderByBuilder<ChannelInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChannelInfoTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<ChannelInfo>(
      where: where?.call(ChannelInfo.t),
      orderBy: orderBy?.call(ChannelInfo.t),
      orderByList: orderByList?.call(ChannelInfo.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChannelInfo?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<ChannelInfo>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<ChannelInfo>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<ChannelInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<ChannelInfo>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChannelInfo> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    ChannelInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<ChannelInfo>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<ChannelInfo>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<ChannelInfo> rows, {
    _i1.ColumnSelections<ChannelInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<ChannelInfo>(
      rows,
      columns: columns?.call(ChannelInfo.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChannelInfo> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    ChannelInfo row, {
    _i1.ColumnSelections<ChannelInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<ChannelInfo>(
      row,
      columns: columns?.call(ChannelInfo.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<ChannelInfo>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<ChannelInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<ChannelInfo>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChannelInfo> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    ChannelInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<ChannelInfo>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<ChannelInfo>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<ChannelInfoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<ChannelInfo>(
      where: where(ChannelInfo.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ChannelInfoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<ChannelInfo>(
      where: where?.call(ChannelInfo.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
