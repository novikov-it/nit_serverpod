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

abstract class ChatRelation implements _i1.SerializableModel {
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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  int chatChannelId;

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
