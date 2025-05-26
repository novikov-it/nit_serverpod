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

/// Database bindings for a sign in with phone.
abstract class PhoneAuth implements _i1.SerializableModel {
  PhoneAuth._({
    this.id,
    required this.phoneNumber,
    required this.hash,
    required this.expirationTime,
    bool? isUsed,
    this.userExtraData,
  }) : isUsed = isUsed ?? false;

  factory PhoneAuth({
    int? id,
    required String phoneNumber,
    required String hash,
    required DateTime expirationTime,
    bool? isUsed,
    Map<String, String>? userExtraData,
  }) = _PhoneAuthImpl;

  factory PhoneAuth.fromJson(Map<String, dynamic> jsonSerialization) {
    return PhoneAuth(
      id: jsonSerialization['id'] as int?,
      phoneNumber: jsonSerialization['phoneNumber'] as String,
      hash: jsonSerialization['hash'] as String,
      expirationTime: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['expirationTime']),
      isUsed: jsonSerialization['isUsed'] as bool,
      userExtraData:
          (jsonSerialization['userExtraData'] as Map?)?.map((k, v) => MapEntry(
                k as String,
                v as String,
              )),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  /// The phoneNumber of the user.
  String phoneNumber;

  /// The hashed otp
  String hash;

  /// The expiration time of the otp
  DateTime expirationTime;

  /// If the otp has been used
  bool isUsed;

  Map<String, String>? userExtraData;

  PhoneAuth copyWith({
    int? id,
    String? phoneNumber,
    String? hash,
    DateTime? expirationTime,
    bool? isUsed,
    Map<String, String>? userExtraData,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'phoneNumber': phoneNumber,
      'hash': hash,
      'expirationTime': expirationTime.toJson(),
      'isUsed': isUsed,
      if (userExtraData != null) 'userExtraData': userExtraData?.toJson(),
    };
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
    Map<String, String>? userExtraData,
  }) : super._(
          id: id,
          phoneNumber: phoneNumber,
          hash: hash,
          expirationTime: expirationTime,
          isUsed: isUsed,
          userExtraData: userExtraData,
        );

  @override
  PhoneAuth copyWith({
    Object? id = _Undefined,
    String? phoneNumber,
    String? hash,
    DateTime? expirationTime,
    bool? isUsed,
    Object? userExtraData = _Undefined,
  }) {
    return PhoneAuth(
      id: id is int? ? id : this.id,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      hash: hash ?? this.hash,
      expirationTime: expirationTime ?? this.expirationTime,
      isUsed: isUsed ?? this.isUsed,
      userExtraData: userExtraData is Map<String, String>?
          ? userExtraData
          : this.userExtraData?.map((
                key0,
                value0,
              ) =>
                  MapEntry(
                    key0,
                    value0,
                  )),
    );
  }
}
