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

abstract class ChatRelation implements _i1.TableRow, _i1.ProtocolSerialization {
  ChatRelation._({
    this.id,
    required this.userId,
    required this.chatChannelId,
  });

  factory ChatRelation({
    int? id,
    required int userId,
    required int chatChannelId,
  }) = _ChatRelationImpl;

  factory ChatRelation.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatRelation(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      chatChannelId: jsonSerialization['chatChannelId'] as int,
    );
  }

  static final t = ChatRelationTable();

  static const db = ChatRelationRepository._();

  @override
  int? id;

  int userId;

  int chatChannelId;

  @override
  _i1.Table get table => t;

  ChatRelation copyWith({
    int? id,
    int? userId,
    int? chatChannelId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'chatChannelId': chatChannelId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'chatChannelId': chatChannelId,
    };
  }

  static ChatRelationInclude include() {
    return ChatRelationInclude._();
  }

  static ChatRelationIncludeList includeList({
    _i1.WhereExpressionBuilder<ChatRelationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRelationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRelationTable>? orderByList,
    ChatRelationInclude? include,
  }) {
    return ChatRelationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChatRelation.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ChatRelation.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChatRelationImpl extends ChatRelation {
  _ChatRelationImpl({
    int? id,
    required int userId,
    required int chatChannelId,
  }) : super._(
          id: id,
          userId: userId,
          chatChannelId: chatChannelId,
        );

  @override
  ChatRelation copyWith({
    Object? id = _Undefined,
    int? userId,
    int? chatChannelId,
  }) {
    return ChatRelation(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      chatChannelId: chatChannelId ?? this.chatChannelId,
    );
  }
}

class ChatRelationTable extends _i1.Table {
  ChatRelationTable({super.tableRelation}) : super(tableName: 'chat_relation') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    chatChannelId = _i1.ColumnInt(
      'chatChannelId',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt chatChannelId;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        chatChannelId,
      ];
}

class ChatRelationInclude extends _i1.IncludeObject {
  ChatRelationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => ChatRelation.t;
}

class ChatRelationIncludeList extends _i1.IncludeList {
  ChatRelationIncludeList._({
    _i1.WhereExpressionBuilder<ChatRelationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ChatRelation.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ChatRelation.t;
}

class ChatRelationRepository {
  const ChatRelationRepository._();

  Future<List<ChatRelation>> find(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ChatRelationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatRelationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRelationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.find<ChatRelation>(
      where: where?.call(ChatRelation.t),
      orderBy: orderBy?.call(ChatRelation.t),
      orderByList: orderByList?.call(ChatRelation.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChatRelation?> findFirstRow(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ChatRelationTable>? where,
    int? offset,
    _i1.OrderByBuilder<ChatRelationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatRelationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findFirstRow<ChatRelation>(
      where: where?.call(ChatRelation.t),
      orderBy: orderBy?.call(ChatRelation.t),
      orderByList: orderByList?.call(ChatRelation.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChatRelation?> findById(
    _i1.DatabaseAccessor databaseAccessor,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.findById<ChatRelation>(
      id,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<ChatRelation>> insert(
    _i1.DatabaseAccessor databaseAccessor,
    List<ChatRelation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insert<ChatRelation>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChatRelation> insertRow(
    _i1.DatabaseAccessor databaseAccessor,
    ChatRelation row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.insertRow<ChatRelation>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<ChatRelation>> update(
    _i1.DatabaseAccessor databaseAccessor,
    List<ChatRelation> rows, {
    _i1.ColumnSelections<ChatRelationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.update<ChatRelation>(
      rows,
      columns: columns?.call(ChatRelation.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChatRelation> updateRow(
    _i1.DatabaseAccessor databaseAccessor,
    ChatRelation row, {
    _i1.ColumnSelections<ChatRelationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.updateRow<ChatRelation>(
      row,
      columns: columns?.call(ChatRelation.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<ChatRelation>> delete(
    _i1.DatabaseAccessor databaseAccessor,
    List<ChatRelation> rows, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.delete<ChatRelation>(
      rows,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<ChatRelation> deleteRow(
    _i1.DatabaseAccessor databaseAccessor,
    ChatRelation row, {
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteRow<ChatRelation>(
      row,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<List<ChatRelation>> deleteWhere(
    _i1.DatabaseAccessor databaseAccessor, {
    required _i1.WhereExpressionBuilder<ChatRelationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.deleteWhere<ChatRelation>(
      where: where(ChatRelation.t),
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }

  Future<int> count(
    _i1.DatabaseAccessor databaseAccessor, {
    _i1.WhereExpressionBuilder<ChatRelationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return databaseAccessor.db.count<ChatRelation>(
      where: where?.call(ChatRelation.t),
      limit: limit,
      transaction: transaction ?? databaseAccessor.transaction,
    );
  }
}
