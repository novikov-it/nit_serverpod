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

abstract class DurationDefault
    implements _i1.TableRow, _i1.ProtocolSerialization {
  DurationDefault._({
    this.id,
    Duration? durationDefault,
    Duration? durationDefaultNull,
  })  : durationDefault = durationDefault ??
            Duration(
              days: 1,
              hours: 2,
              minutes: 10,
              seconds: 30,
              milliseconds: 100,
            ),
        durationDefaultNull = durationDefaultNull ??
            Duration(
              days: 2,
              hours: 1,
              minutes: 20,
              seconds: 40,
              milliseconds: 100,
            );

  factory DurationDefault({
    int? id,
    Duration? durationDefault,
    Duration? durationDefaultNull,
  }) = _DurationDefaultImpl;

  factory DurationDefault.fromJson(Map<String, dynamic> jsonSerialization) {
    return DurationDefault(
      id: jsonSerialization['id'] as int?,
      durationDefault: _i1.DurationJsonExtension.fromJson(
          jsonSerialization['durationDefault']),
      durationDefaultNull: jsonSerialization['durationDefaultNull'] == null
          ? null
          : _i1.DurationJsonExtension.fromJson(
              jsonSerialization['durationDefaultNull']),
    );
  }

  static final t = DurationDefaultTable();

  static const db = DurationDefaultRepository._();

  @override
  int? id;

  Duration durationDefault;

  Duration? durationDefaultNull;

  @override
  _i1.Table get table => t;

  DurationDefault copyWith({
    int? id,
    Duration? durationDefault,
    Duration? durationDefaultNull,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'durationDefault': durationDefault.toJson(),
      if (durationDefaultNull != null)
        'durationDefaultNull': durationDefaultNull?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'durationDefault': durationDefault.toJson(),
      if (durationDefaultNull != null)
        'durationDefaultNull': durationDefaultNull?.toJson(),
    };
  }

  static DurationDefaultInclude include() {
    return DurationDefaultInclude._();
  }

  static DurationDefaultIncludeList includeList({
    _i1.WhereExpressionBuilder<DurationDefaultTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DurationDefaultTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DurationDefaultTable>? orderByList,
    DurationDefaultInclude? include,
  }) {
    return DurationDefaultIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(DurationDefault.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(DurationDefault.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DurationDefaultImpl extends DurationDefault {
  _DurationDefaultImpl({
    int? id,
    Duration? durationDefault,
    Duration? durationDefaultNull,
  }) : super._(
          id: id,
          durationDefault: durationDefault,
          durationDefaultNull: durationDefaultNull,
        );

  @override
  DurationDefault copyWith({
    Object? id = _Undefined,
    Duration? durationDefault,
    Object? durationDefaultNull = _Undefined,
  }) {
    return DurationDefault(
      id: id is int? ? id : this.id,
      durationDefault: durationDefault ?? this.durationDefault,
      durationDefaultNull: durationDefaultNull is Duration?
          ? durationDefaultNull
          : this.durationDefaultNull,
    );
  }
}

class DurationDefaultTable extends _i1.Table {
  DurationDefaultTable({super.tableRelation})
      : super(tableName: 'duration_default') {
    durationDefault = _i1.ColumnDuration(
      'durationDefault',
      this,
      hasDefault: true,
    );
    durationDefaultNull = _i1.ColumnDuration(
      'durationDefaultNull',
      this,
      hasDefault: true,
    );
  }

  late final _i1.ColumnDuration durationDefault;

  late final _i1.ColumnDuration durationDefaultNull;

  @override
  List<_i1.Column> get columns => [
        id,
        durationDefault,
        durationDefaultNull,
      ];
}

class DurationDefaultInclude extends _i1.IncludeObject {
  DurationDefaultInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => DurationDefault.t;
}

class DurationDefaultIncludeList extends _i1.IncludeList {
  DurationDefaultIncludeList._({
    _i1.WhereExpressionBuilder<DurationDefaultTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(DurationDefault.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => DurationDefault.t;
}

class DurationDefaultRepository {
  const DurationDefaultRepository._();

  Future<List<DurationDefault>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DurationDefaultTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DurationDefaultTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DurationDefaultTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<DurationDefault>(
      where: where?.call(DurationDefault.t),
      orderBy: orderBy?.call(DurationDefault.t),
      orderByList: orderByList?.call(DurationDefault.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DurationDefault?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DurationDefaultTable>? where,
    int? offset,
    _i1.OrderByBuilder<DurationDefaultTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DurationDefaultTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<DurationDefault>(
      where: where?.call(DurationDefault.t),
      orderBy: orderBy?.call(DurationDefault.t),
      orderByList: orderByList?.call(DurationDefault.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DurationDefault?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<DurationDefault>(
      id,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DurationDefault>> insert(
    _i1.Session session,
    List<DurationDefault> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<DurationDefault>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DurationDefault> insertRow(
    _i1.Session session,
    DurationDefault row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<DurationDefault>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DurationDefault>> update(
    _i1.Session session,
    List<DurationDefault> rows, {
    _i1.ColumnSelections<DurationDefaultTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<DurationDefault>(
      rows,
      columns: columns?.call(DurationDefault.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DurationDefault> updateRow(
    _i1.Session session,
    DurationDefault row, {
    _i1.ColumnSelections<DurationDefaultTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<DurationDefault>(
      row,
      columns: columns?.call(DurationDefault.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DurationDefault>> delete(
    _i1.Session session,
    List<DurationDefault> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<DurationDefault>(
      rows,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<DurationDefault> deleteRow(
    _i1.Session session,
    DurationDefault row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<DurationDefault>(
      row,
      transaction: transaction ?? session.transaction,
    );
  }

  Future<List<DurationDefault>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DurationDefaultTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<DurationDefault>(
      where: where(DurationDefault.t),
      transaction: transaction ?? session.transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DurationDefaultTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<DurationDefault>(
      where: where?.call(DurationDefault.t),
      limit: limit,
      transaction: transaction ?? session.transaction,
    );
  }
}
