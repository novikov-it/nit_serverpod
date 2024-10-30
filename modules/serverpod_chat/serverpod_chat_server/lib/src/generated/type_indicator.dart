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

abstract class TypeIndicator
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  TypeIndicator._({
    required this.typerID,
    required this.status,
    required this.channel,
  });

  factory TypeIndicator({
    required int typerID,
    required bool status,
    required String channel,
  }) = _TypeIndicatorImpl;

  factory TypeIndicator.fromJson(Map<String, dynamic> jsonSerialization) {
    return TypeIndicator(
      typerID: jsonSerialization['typerID'] as int,
      status: jsonSerialization['status'] as bool,
      channel: jsonSerialization['channel'] as String,
    );
  }

  int typerID;

  bool status;

  String channel;

  TypeIndicator copyWith({
    int? typerID,
    bool? status,
    String? channel,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'typerID': typerID,
      'status': status,
      'channel': channel,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'typerID': typerID,
      'status': status,
      'channel': channel,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _TypeIndicatorImpl extends TypeIndicator {
  _TypeIndicatorImpl({
    required int typerID,
    required bool status,
    required String channel,
  }) : super._(
          typerID: typerID,
          status: status,
          channel: channel,
        );

  @override
  TypeIndicator copyWith({
    int? typerID,
    bool? status,
    String? channel,
  }) {
    return TypeIndicator(
      typerID: typerID ?? this.typerID,
      status: status ?? this.status,
      channel: channel ?? this.channel,
    );
  }
}
