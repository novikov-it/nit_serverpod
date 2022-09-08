/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields

import 'package:serverpod_client/serverpod_client.dart';
import 'dart:typed_data';
import 'protocol.dart';

class SessionLogResult extends SerializableEntity {
  @override
  String get className => 'SessionLogResult';

  late List<SessionLogInfo> sessionLog;

  SessionLogResult({
    required this.sessionLog,
  });

  SessionLogResult.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    sessionLog = _data['sessionLog']!
        .map<SessionLogInfo>((a) => SessionLogInfo.fromSerialization(a))
        ?.toList();
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'sessionLog':
          sessionLog.map((SessionLogInfo a) => a.serialize()).toList(),
    });
  }
}
