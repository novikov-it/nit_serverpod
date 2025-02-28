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

/// Database bindings for a sign in with phone.
abstract class PhoneAuth implements _i1.TableRow, _i1.ProtocolSerialization {
  PhoneAuth._({
    this.id,
    required this.phoneNumber,
    required this.hash,
    required this.expirationTime,
    bool? isUsed,
  }) : isUsed = isUsed ?? false;

  factory PhoneAuth({
    int? id,
    required String phoneNumber,
    required String hash,
    required DateTime expirationTime,
    bool? isUsed,
  }) = _PhoneAuthImpl;

  factory PhoneAuth.fromJson(Map<String, dynamic> jsonSerialization) {
    return PhoneAuth(
      id: jsonSerialization['id'] as int?,
      phoneNumber: jsonSerialization['phoneNumber'] as String,
      hash: jsonSerialization['hash'] as String,
      expirationTime: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['expirationTime']),
      isUsed: jsonSerialization['isUsed'] as bool,
    );
  }

  static final t = PhoneAuthTable();

  static const db = PhoneAuthRepository._();

  @override
  int? id;

  /// The phoneNumber of the user.
  String phoneNumber;

  /// The hashed otp
  String hash;

  /// The expiration time of the otp
  DateTime expirationTime;

  /// If the otp has been used
  bool isUsed;

  @override
  _i1.Table get table => t;

  PhoneAuth copyWith({
    int? id,
    String? phoneNumber,
    String? hash,
    DateTime? expirationTime,
    bool? isUsed,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'phoneNumber': phoneNumber,
      'hash': hash,
      'expirationTime': expirationTime.toJson(),
      'isUsed': isUsed,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'phoneNumber': phoneNumber,
      'hash': hash,
      'expirationTime': expirationTime.toJson(),
      'isUsed': isUsed,
    };
  }

  static PhoneAuthInclude include() {
    return PhoneAuthInclude._();
  }

  static PhoneAuthIncludeList includeList({
    _i1.WhereExpressionBuilder<PhoneAuthTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PhoneAuthTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PhoneAuthTable>? orderByList,
    PhoneAuthInclude? include,
  }) {
    return PhoneAuthIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PhoneAuth.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PhoneAuth.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PhoneAuthImpl extends PhoneAuth {
  _PhoneAuthImpl({
    int? id,
    required String phoneNumber,
    required String hash,
    required DateTime expirationTime,
    bool? isUsed,
  }) : super._(
          id: id,
          phoneNumber: phoneNumber,
          hash: hash,
          expirationTime: expirationTime,
          isUsed: isUsed,
        );

  @override
  PhoneAuth copyWith({
    Object? id = _Undefined,
    String? phoneNumber,
    String? hash,
    DateTime? expirationTime,
    bool? isUsed,
  }) {
    return PhoneAuth(
      id: id is int? ? id : this.id,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      hash: hash ?? this.hash,
      expirationTime: expirationTime ?? this.expirationTime,
      isUsed: isUsed ?? this.isUsed,
    );
  }
}

class PhoneAuthTable extends _i1.Table {
  PhoneAuthTable({super.tableRelation})
      : super(tableName: 'serverpod_phone_auth') {
    phoneNumber = _i1.ColumnString(
      'phoneNumber',
      this,
    );
    hash = _i1.ColumnString(
      'hash',
      this,
    );
    expirationTime = _i1.ColumnDateTime(
      'expirationTime',
      this,
    );
    isUsed = _i1.ColumnBool(
      'isUsed',
      this,
      hasDefault: true,
    );
  }

  /// The phoneNumber of the user.
  late final _i1.ColumnString phoneNumber;

  /// The hashed otp
  late final _i1.ColumnString hash;

  /// The expiration time of the otp
  late final _i1.ColumnDateTime expirationTime;

  /// If the otp has been used
  late final _i1.ColumnBool isUsed;

  @override
  List<_i1.Column> get columns => [
        id,
        phoneNumber,
        hash,
        expirationTime,
        isUsed,
      ];
}

class PhoneAuthInclude extends _i1.IncludeObject {
  PhoneAuthInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => PhoneAuth.t;
}

class PhoneAuthIncludeList extends _i1.IncludeList {
  PhoneAuthIncludeList._({
    _i1.WhereExpressionBuilder<PhoneAuthTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PhoneAuth.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => PhoneAuth.t;
}

class PhoneAuthRepository {
  const PhoneAuthRepository._();

  Future<List<PhoneAuth>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PhoneAuthTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PhoneAuthTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PhoneAuthTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PhoneAuth>(
      where: where?.call(PhoneAuth.t),
      orderBy: orderBy?.call(PhoneAuth.t),
      orderByList: orderByList?.call(PhoneAuth.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PhoneAuth?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PhoneAuthTable>? where,
    int? offset,
    _i1.OrderByBuilder<PhoneAuthTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PhoneAuthTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PhoneAuth>(
      where: where?.call(PhoneAuth.t),
      orderBy: orderBy?.call(PhoneAuth.t),
      orderByList: orderByList?.call(PhoneAuth.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<PhoneAuth?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PhoneAuth>(
      id,
      transaction: transaction,
    );
  }

  Future<List<PhoneAuth>> insert(
    _i1.Session session,
    List<PhoneAuth> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PhoneAuth>(
      rows,
      transaction: transaction,
    );
  }

  Future<PhoneAuth> insertRow(
    _i1.Session session,
    PhoneAuth row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PhoneAuth>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PhoneAuth>> update(
    _i1.Session session,
    List<PhoneAuth> rows, {
    _i1.ColumnSelections<PhoneAuthTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PhoneAuth>(
      rows,
      columns: columns?.call(PhoneAuth.t),
      transaction: transaction,
    );
  }

  Future<PhoneAuth> updateRow(
    _i1.Session session,
    PhoneAuth row, {
    _i1.ColumnSelections<PhoneAuthTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PhoneAuth>(
      row,
      columns: columns?.call(PhoneAuth.t),
      transaction: transaction,
    );
  }

  Future<List<PhoneAuth>> delete(
    _i1.Session session,
    List<PhoneAuth> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PhoneAuth>(
      rows,
      transaction: transaction,
    );
  }

  Future<PhoneAuth> deleteRow(
    _i1.Session session,
    PhoneAuth row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PhoneAuth>(
      row,
      transaction: transaction,
    );
  }

  Future<List<PhoneAuth>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PhoneAuthTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PhoneAuth>(
      where: where(PhoneAuth.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PhoneAuthTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PhoneAuth>(
      where: where?.call(PhoneAuth.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
