/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: invalid_use_of_visible_for_testing_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

/// A log entry for a database query.
abstract class QueryLogEntry
    implements _i1.TableRow, _i1.ProtocolSerialization {
  QueryLogEntry._({
    this.id,
    required this.serverId,
    required this.sessionLogId,
    this.messageId,
    required this.query,
    required this.duration,
    this.numRows,
    this.error,
    this.stackTrace,
    required this.slow,
    required this.order,
  });

  factory QueryLogEntry({
    int? id,
    required String serverId,
    required int sessionLogId,
    int? messageId,
    required String query,
    required double duration,
    int? numRows,
    String? error,
    String? stackTrace,
    required bool slow,
    required int order,
  }) = _QueryLogEntryImpl;

  factory QueryLogEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return QueryLogEntry(
      id: jsonSerialization['id'] as int?,
      serverId: jsonSerialization['serverId'] as String,
      sessionLogId: jsonSerialization['sessionLogId'] as int,
      messageId: jsonSerialization['messageId'] as int?,
      query: jsonSerialization['query'] as String,
      duration: (jsonSerialization['duration'] as num).toDouble(),
      numRows: jsonSerialization['numRows'] as int?,
      error: jsonSerialization['error'] as String?,
      stackTrace: jsonSerialization['stackTrace'] as String?,
      slow: jsonSerialization['slow'] as bool,
      order: jsonSerialization['order'] as int,
    );
  }

  static final t = QueryLogEntryTable();

  static const db = QueryLogEntryRepository._();

  @override
  int? id;

  /// The id of the server that handled the query.
  String serverId;

  /// Id of the session this entry is associated with.
  int sessionLogId;

  /// The id of the message this entry is associated with, if the query was
  /// executed in a streaming session.
  int? messageId;

  /// The query that was executed.
  String query;

  /// The time it took to execute the query, in seconds.
  double duration;

  /// Number of rows returned by this query. This can be null if the number is
  /// not relevant.
  int? numRows;

  /// Set if an exception was thrown during the execution of this query.
  String? error;

  /// The stack trace of this query.
  String? stackTrace;

  /// True if the execution of this query was considered slow.
  bool slow;

  /// used for sorting the query log.
  int order;

  @override
  _i1.Table get table => t;

  QueryLogEntry copyWith({
    int? id,
    String? serverId,
    int? sessionLogId,
    int? messageId,
    String? query,
    double? duration,
    int? numRows,
    String? error,
    String? stackTrace,
    bool? slow,
    int? order,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'serverId': serverId,
      'sessionLogId': sessionLogId,
      if (messageId != null) 'messageId': messageId,
      'query': query,
      'duration': duration,
      if (numRows != null) 'numRows': numRows,
      if (error != null) 'error': error,
      if (stackTrace != null) 'stackTrace': stackTrace,
      'slow': slow,
      'order': order,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'serverId': serverId,
      'sessionLogId': sessionLogId,
      if (messageId != null) 'messageId': messageId,
      'query': query,
      'duration': duration,
      if (numRows != null) 'numRows': numRows,
      if (error != null) 'error': error,
      if (stackTrace != null) 'stackTrace': stackTrace,
      'slow': slow,
      'order': order,
    };
  }

  static QueryLogEntryInclude include() {
    return QueryLogEntryInclude._();
  }

  static QueryLogEntryIncludeList includeList({
    _i1.WhereExpressionBuilder<QueryLogEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QueryLogEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QueryLogEntryTable>? orderByList,
    QueryLogEntryInclude? include,
  }) {
    return QueryLogEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(QueryLogEntry.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(QueryLogEntry.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _QueryLogEntryImpl extends QueryLogEntry {
  _QueryLogEntryImpl({
    int? id,
    required String serverId,
    required int sessionLogId,
    int? messageId,
    required String query,
    required double duration,
    int? numRows,
    String? error,
    String? stackTrace,
    required bool slow,
    required int order,
  }) : super._(
          id: id,
          serverId: serverId,
          sessionLogId: sessionLogId,
          messageId: messageId,
          query: query,
          duration: duration,
          numRows: numRows,
          error: error,
          stackTrace: stackTrace,
          slow: slow,
          order: order,
        );

  @override
  QueryLogEntry copyWith({
    Object? id = _Undefined,
    String? serverId,
    int? sessionLogId,
    Object? messageId = _Undefined,
    String? query,
    double? duration,
    Object? numRows = _Undefined,
    Object? error = _Undefined,
    Object? stackTrace = _Undefined,
    bool? slow,
    int? order,
  }) {
    return QueryLogEntry(
      id: id is int? ? id : this.id,
      serverId: serverId ?? this.serverId,
      sessionLogId: sessionLogId ?? this.sessionLogId,
      messageId: messageId is int? ? messageId : this.messageId,
      query: query ?? this.query,
      duration: duration ?? this.duration,
      numRows: numRows is int? ? numRows : this.numRows,
      error: error is String? ? error : this.error,
      stackTrace: stackTrace is String? ? stackTrace : this.stackTrace,
      slow: slow ?? this.slow,
      order: order ?? this.order,
    );
  }
}

class QueryLogEntryTable extends _i1.Table {
  QueryLogEntryTable({super.tableRelation})
      : super(tableName: 'serverpod_query_log') {
    serverId = _i1.ColumnString(
      'serverId',
      this,
    );
    sessionLogId = _i1.ColumnInt(
      'sessionLogId',
      this,
    );
    messageId = _i1.ColumnInt(
      'messageId',
      this,
    );
    query = _i1.ColumnString(
      'query',
      this,
    );
    duration = _i1.ColumnDouble(
      'duration',
      this,
    );
    numRows = _i1.ColumnInt(
      'numRows',
      this,
    );
    error = _i1.ColumnString(
      'error',
      this,
    );
    stackTrace = _i1.ColumnString(
      'stackTrace',
      this,
    );
    slow = _i1.ColumnBool(
      'slow',
      this,
    );
    order = _i1.ColumnInt(
      'order',
      this,
    );
  }

  /// The id of the server that handled the query.
  late final _i1.ColumnString serverId;

  /// Id of the session this entry is associated with.
  late final _i1.ColumnInt sessionLogId;

  /// The id of the message this entry is associated with, if the query was
  /// executed in a streaming session.
  late final _i1.ColumnInt messageId;

  /// The query that was executed.
  late final _i1.ColumnString query;

  /// The time it took to execute the query, in seconds.
  late final _i1.ColumnDouble duration;

  /// Number of rows returned by this query. This can be null if the number is
  /// not relevant.
  late final _i1.ColumnInt numRows;

  /// Set if an exception was thrown during the execution of this query.
  late final _i1.ColumnString error;

  /// The stack trace of this query.
  late final _i1.ColumnString stackTrace;

  /// True if the execution of this query was considered slow.
  late final _i1.ColumnBool slow;

  /// used for sorting the query log.
  late final _i1.ColumnInt order;

  @override
  List<_i1.Column> get columns => [
        id,
        serverId,
        sessionLogId,
        messageId,
        query,
        duration,
        numRows,
        error,
        stackTrace,
        slow,
        order,
      ];
}

class QueryLogEntryInclude extends _i1.IncludeObject {
  QueryLogEntryInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => QueryLogEntry.t;
}

class QueryLogEntryIncludeList extends _i1.IncludeList {
  QueryLogEntryIncludeList._({
    _i1.WhereExpressionBuilder<QueryLogEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(QueryLogEntry.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => QueryLogEntry.t;
}

class QueryLogEntryRepository {
  const QueryLogEntryRepository._();

  Future<List<QueryLogEntry>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QueryLogEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<QueryLogEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QueryLogEntryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<QueryLogEntry>(
      where: where?.call(QueryLogEntry.t),
      orderBy: orderBy?.call(QueryLogEntry.t),
      orderByList: orderByList?.call(QueryLogEntry.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<QueryLogEntry?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QueryLogEntryTable>? where,
    int? offset,
    _i1.OrderByBuilder<QueryLogEntryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<QueryLogEntryTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<QueryLogEntry>(
      where: where?.call(QueryLogEntry.t),
      orderBy: orderBy?.call(QueryLogEntry.t),
      orderByList: orderByList?.call(QueryLogEntry.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<QueryLogEntry?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<QueryLogEntry>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<QueryLogEntry>> insert(
    _i1.Session session,
    List<QueryLogEntry> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<QueryLogEntry>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<QueryLogEntry> insertRow(
    _i1.Session session,
    QueryLogEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<QueryLogEntry>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<QueryLogEntry>> update(
    _i1.Session session,
    List<QueryLogEntry> rows, {
    _i1.ColumnSelections<QueryLogEntryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<QueryLogEntry>(
      rows,
      columns: columns?.call(QueryLogEntry.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<QueryLogEntry> updateRow(
    _i1.Session session,
    QueryLogEntry row, {
    _i1.ColumnSelections<QueryLogEntryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<QueryLogEntry>(
      row,
      columns: columns?.call(QueryLogEntry.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<QueryLogEntry>> delete(
    _i1.Session session,
    List<QueryLogEntry> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<QueryLogEntry>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<QueryLogEntry> deleteRow(
    _i1.Session session,
    QueryLogEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<QueryLogEntry>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<QueryLogEntry>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<QueryLogEntryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<QueryLogEntry>(
      where: where(QueryLogEntry.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<QueryLogEntryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<QueryLogEntry>(
      where: where?.call(QueryLogEntry.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
