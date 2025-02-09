/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_local_identifiers

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_test/serverpod_test.dart' as _i1;
import 'package:serverpod/serverpod.dart' as _i2;
import 'dart:async' as _i3;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i4;
import 'dart:typed_data' as _i5;
import 'package:uuid/uuid_value.dart' as _i6;
import 'package:serverpod_test_server/src/protocol_custom_classes.dart' as _i7;
import 'package:serverpod_test_server/src/custom_classes.dart' as _i8;
import 'package:serverpod_test_shared/src/external_custom_class.dart' as _i9;
import 'package:serverpod_test_shared/src/freezed_custom_class.dart' as _i10;
import 'package:serverpod_test_server/src/generated/simple_data.dart' as _i11;
import 'package:serverpod_test_server/src/generated/simple_data_list.dart'
    as _i12;
import 'package:serverpod_test_server/src/generated/types.dart' as _i13;
import 'package:serverpod_test_server/src/generated/object_with_enum.dart'
    as _i14;
import 'package:serverpod_test_server/src/generated/object_with_object.dart'
    as _i15;
import 'package:serverpod_test_server/src/generated/object_field_scopes.dart'
    as _i16;
import 'package:serverpod_test_server/src/generated/test_enum.dart' as _i17;
import 'package:serverpod_test_module_server/serverpod_test_module_server.dart'
    as _i18;
import 'package:serverpod_test_server/src/generated/module_datatype.dart'
    as _i19;
import 'package:serverpod_test_server/src/generated/scopes/scope_server_only_field.dart'
    as _i20;
import 'package:serverpod_test_server/src/generated/scopes/scope_server_only_field_child.dart'
    as _i21;
import 'package:serverpod_test_server/src/generated/protocol.dart';
import 'package:serverpod_test_server/src/generated/endpoints.dart';
export 'package:serverpod_test/serverpod_test_public_exports.dart';

@_i1.isTestGroup
withServerpod(
  String testGroupName,
  _i1.TestClosure<TestEndpoints> testClosure, {
  String? runMode,
  bool? enableSessionLogging,
  List<String>? testGroupTagsOverride,
  _i1.RollbackDatabase? rollbackDatabase,
  bool? applyMigrations,
}) {
  _i1.buildWithServerpod<_InternalTestEndpoints>(
    testGroupName,
    _i1.TestServerpod(
      testEndpoints: _InternalTestEndpoints(),
      endpoints: Endpoints(),
      serializationManager: Protocol(),
      runMode: runMode,
      applyMigrations: applyMigrations,
      isDatabaseEnabled: true,
    ),
    maybeRollbackDatabase: rollbackDatabase,
    maybeEnableSessionLogging: enableSessionLogging,
    maybeTestGroupTagsOverride: testGroupTagsOverride,
  )(testClosure);
}

class TestEndpoints {
  late final _AsyncTasksEndpoint asyncTasks;

  late final _AuthenticationEndpoint authentication;

  late final _BasicTypesEndpoint basicTypes;

  late final _CloudStorageEndpoint cloudStorage;

  late final _S3CloudStorageEndpoint s3CloudStorage;

  late final _CustomClassProtocolEndpoint customClassProtocol;

  late final _CustomTypesEndpoint customTypes;

  late final _BasicDatabase basicDatabase;

  late final _TransactionsDatabaseEndpoint transactionsDatabase;

  late final _DeprecationEndpoint deprecation;

  late final _EchoRequestEndpoint echoRequest;

  late final _EmailAuthTestMethods emailAuthTestMethods;

  late final _ExceptionTestEndpoint exceptionTest;

  late final _FailedCallsEndpoint failedCalls;

  late final _FieldScopesEndpoint fieldScopes;

  late final _FutureCallsEndpoint futureCalls;

  late final _ListParametersEndpoint listParameters;

  late final _LoggingEndpoint logging;

  late final _StreamLogging streamLogging;

  late final _StreamQueryLogging streamQueryLogging;

  late final _LoggingDisabledEndpoint loggingDisabled;

  late final _MapParametersEndpoint mapParameters;

  late final _MethodSignaturePermutationsEndpoint methodSignaturePermutations;

  late final _MethodStreaming methodStreaming;

  late final _AuthenticatedMethodStreaming authenticatedMethodStreaming;

  late final _ModuleSerializationEndpoint moduleSerialization;

  late final _NamedParametersEndpoint namedParameters;

  late final _OptionalParametersEndpoint optionalParameters;

  late final _RedisEndpoint redis;

  late final _ServerOnlyScopedFieldModelEndpoint serverOnlyScopedFieldModel;

  late final _ServerOnlyScopedFieldChildModelEndpoint
      serverOnlyScopedFieldChildModel;

  late final _SignInRequiredEndpoint signInRequired;

  late final _AdminScopeRequiredEndpoint adminScopeRequired;

  late final _SimpleEndpoint simple;

  late final _StreamingEndpoint streaming;

  late final _StreamingLoggingEndpoint streamingLogging;

  late final _SubSubDirTestEndpoint subSubDirTest;

  late final _SubDirTestEndpoint subDirTest;

  late final _TestToolsEndpoint testTools;

  late final _AuthenticatedTestToolsEndpoint authenticatedTestTools;
}

class _InternalTestEndpoints extends TestEndpoints
    implements _i1.InternalTestEndpoints {
  @override
  initialize(
    _i2.SerializationManager serializationManager,
    _i2.EndpointDispatch endpoints,
  ) {
    asyncTasks = _AsyncTasksEndpoint(
      endpoints,
      serializationManager,
    );
    authentication = _AuthenticationEndpoint(
      endpoints,
      serializationManager,
    );
    basicTypes = _BasicTypesEndpoint(
      endpoints,
      serializationManager,
    );
    cloudStorage = _CloudStorageEndpoint(
      endpoints,
      serializationManager,
    );
    s3CloudStorage = _S3CloudStorageEndpoint(
      endpoints,
      serializationManager,
    );
    customClassProtocol = _CustomClassProtocolEndpoint(
      endpoints,
      serializationManager,
    );
    customTypes = _CustomTypesEndpoint(
      endpoints,
      serializationManager,
    );
    basicDatabase = _BasicDatabase(
      endpoints,
      serializationManager,
    );
    transactionsDatabase = _TransactionsDatabaseEndpoint(
      endpoints,
      serializationManager,
    );
    deprecation = _DeprecationEndpoint(
      endpoints,
      serializationManager,
    );
    echoRequest = _EchoRequestEndpoint(
      endpoints,
      serializationManager,
    );
    emailAuthTestMethods = _EmailAuthTestMethods(
      endpoints,
      serializationManager,
    );
    exceptionTest = _ExceptionTestEndpoint(
      endpoints,
      serializationManager,
    );
    failedCalls = _FailedCallsEndpoint(
      endpoints,
      serializationManager,
    );
    fieldScopes = _FieldScopesEndpoint(
      endpoints,
      serializationManager,
    );
    futureCalls = _FutureCallsEndpoint(
      endpoints,
      serializationManager,
    );
    listParameters = _ListParametersEndpoint(
      endpoints,
      serializationManager,
    );
    logging = _LoggingEndpoint(
      endpoints,
      serializationManager,
    );
    streamLogging = _StreamLogging(
      endpoints,
      serializationManager,
    );
    streamQueryLogging = _StreamQueryLogging(
      endpoints,
      serializationManager,
    );
    loggingDisabled = _LoggingDisabledEndpoint(
      endpoints,
      serializationManager,
    );
    mapParameters = _MapParametersEndpoint(
      endpoints,
      serializationManager,
    );
    methodSignaturePermutations = _MethodSignaturePermutationsEndpoint(
      endpoints,
      serializationManager,
    );
    methodStreaming = _MethodStreaming(
      endpoints,
      serializationManager,
    );
    authenticatedMethodStreaming = _AuthenticatedMethodStreaming(
      endpoints,
      serializationManager,
    );
    moduleSerialization = _ModuleSerializationEndpoint(
      endpoints,
      serializationManager,
    );
    namedParameters = _NamedParametersEndpoint(
      endpoints,
      serializationManager,
    );
    optionalParameters = _OptionalParametersEndpoint(
      endpoints,
      serializationManager,
    );
    redis = _RedisEndpoint(
      endpoints,
      serializationManager,
    );
    serverOnlyScopedFieldModel = _ServerOnlyScopedFieldModelEndpoint(
      endpoints,
      serializationManager,
    );
    serverOnlyScopedFieldChildModel = _ServerOnlyScopedFieldChildModelEndpoint(
      endpoints,
      serializationManager,
    );
    signInRequired = _SignInRequiredEndpoint(
      endpoints,
      serializationManager,
    );
    adminScopeRequired = _AdminScopeRequiredEndpoint(
      endpoints,
      serializationManager,
    );
    simple = _SimpleEndpoint(
      endpoints,
      serializationManager,
    );
    streaming = _StreamingEndpoint(
      endpoints,
      serializationManager,
    );
    streamingLogging = _StreamingLoggingEndpoint(
      endpoints,
      serializationManager,
    );
    subSubDirTest = _SubSubDirTestEndpoint(
      endpoints,
      serializationManager,
    );
    subDirTest = _SubDirTestEndpoint(
      endpoints,
      serializationManager,
    );
    testTools = _TestToolsEndpoint(
      endpoints,
      serializationManager,
    );
    authenticatedTestTools = _AuthenticatedTestToolsEndpoint(
      endpoints,
      serializationManager,
    );
  }
}

class _AsyncTasksEndpoint {
  _AsyncTasksEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> insertRowToSimpleDataAfterDelay(
    _i1.TestSessionBuilder sessionBuilder,
    int num,
    int seconds,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'asyncTasks',
        method: 'insertRowToSimpleDataAfterDelay',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'asyncTasks',
        methodName: 'insertRowToSimpleDataAfterDelay',
        parameters: _i1.testObjectToJson({
          'num': num,
          'seconds': seconds,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> throwExceptionAfterDelay(
    _i1.TestSessionBuilder sessionBuilder,
    int seconds,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'asyncTasks',
        method: 'throwExceptionAfterDelay',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'asyncTasks',
        methodName: 'throwExceptionAfterDelay',
        parameters: _i1.testObjectToJson({'seconds': seconds}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _AuthenticationEndpoint {
  _AuthenticationEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> removeAllUsers(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'authentication',
        method: 'removeAllUsers',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'authentication',
        methodName: 'removeAllUsers',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int> countUsers(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'authentication',
        method: 'countUsers',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'authentication',
        methodName: 'countUsers',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> createUser(
    _i1.TestSessionBuilder sessionBuilder,
    String email,
    String password,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'authentication',
        method: 'createUser',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'authentication',
        methodName: 'createUser',
        parameters: _i1.testObjectToJson({
          'email': email,
          'password': password,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i4.AuthenticationResponse> authenticate(
    _i1.TestSessionBuilder sessionBuilder,
    String email,
    String password, [
    List<String>? scopes,
  ]) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'authentication',
        method: 'authenticate',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'authentication',
        methodName: 'authenticate',
        parameters: _i1.testObjectToJson({
          'email': email,
          'password': password,
          'scopes': scopes,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i4.AuthenticationResponse>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> signOut(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'authentication',
        method: 'signOut',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'authentication',
        methodName: 'signOut',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> updateScopes(
    _i1.TestSessionBuilder sessionBuilder,
    int userId,
    List<String> scopes,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'authentication',
        method: 'updateScopes',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'authentication',
        methodName: 'updateScopes',
        parameters: _i1.testObjectToJson({
          'userId': userId,
          'scopes': scopes,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _BasicTypesEndpoint {
  _BasicTypesEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<int?> testInt(
    _i1.TestSessionBuilder sessionBuilder,
    int? value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicTypes',
        method: 'testInt',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicTypes',
        methodName: 'testInt',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<double?> testDouble(
    _i1.TestSessionBuilder sessionBuilder,
    double? value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicTypes',
        method: 'testDouble',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicTypes',
        methodName: 'testDouble',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<double?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool?> testBool(
    _i1.TestSessionBuilder sessionBuilder,
    bool? value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicTypes',
        method: 'testBool',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicTypes',
        methodName: 'testBool',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<DateTime?> testDateTime(
    _i1.TestSessionBuilder sessionBuilder,
    DateTime? dateTime,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicTypes',
        method: 'testDateTime',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicTypes',
        methodName: 'testDateTime',
        parameters: _i1.testObjectToJson({'dateTime': dateTime}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<DateTime?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String?> testString(
    _i1.TestSessionBuilder sessionBuilder,
    String? value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicTypes',
        method: 'testString',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicTypes',
        methodName: 'testString',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i5.ByteData?> testByteData(
    _i1.TestSessionBuilder sessionBuilder,
    _i5.ByteData? value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicTypes',
        method: 'testByteData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicTypes',
        methodName: 'testByteData',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i5.ByteData?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Duration?> testDuration(
    _i1.TestSessionBuilder sessionBuilder,
    Duration? value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicTypes',
        method: 'testDuration',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicTypes',
        methodName: 'testDuration',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Duration?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i6.UuidValue?> testUuid(
    _i1.TestSessionBuilder sessionBuilder,
    _i6.UuidValue? value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicTypes',
        method: 'testUuid',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicTypes',
        methodName: 'testUuid',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i6.UuidValue?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _CloudStorageEndpoint {
  _CloudStorageEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> reset(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'cloudStorage',
        method: 'reset',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'cloudStorage',
        methodName: 'reset',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> storePublicFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
    _i5.ByteData byteData,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'cloudStorage',
        method: 'storePublicFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'cloudStorage',
        methodName: 'storePublicFile',
        parameters: _i1.testObjectToJson({
          'path': path,
          'byteData': byteData,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i5.ByteData?> retrievePublicFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'cloudStorage',
        method: 'retrievePublicFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'cloudStorage',
        methodName: 'retrievePublicFile',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i5.ByteData?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool?> existsPublicFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'cloudStorage',
        method: 'existsPublicFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'cloudStorage',
        methodName: 'existsPublicFile',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> deletePublicFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'cloudStorage',
        method: 'deletePublicFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'cloudStorage',
        methodName: 'deletePublicFile',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String?> getPublicUrlForFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'cloudStorage',
        method: 'getPublicUrlForFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'cloudStorage',
        methodName: 'getPublicUrlForFile',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String?> getDirectFilePostUrl(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'cloudStorage',
        method: 'getDirectFilePostUrl',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'cloudStorage',
        methodName: 'getDirectFilePostUrl',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool> verifyDirectFileUpload(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'cloudStorage',
        method: 'verifyDirectFileUpload',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'cloudStorage',
        methodName: 'verifyDirectFileUpload',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _S3CloudStorageEndpoint {
  _S3CloudStorageEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> storePublicFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
    _i5.ByteData byteData,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 's3CloudStorage',
        method: 'storePublicFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 's3CloudStorage',
        methodName: 'storePublicFile',
        parameters: _i1.testObjectToJson({
          'path': path,
          'byteData': byteData,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i5.ByteData?> retrievePublicFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 's3CloudStorage',
        method: 'retrievePublicFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 's3CloudStorage',
        methodName: 'retrievePublicFile',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i5.ByteData?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool?> existsPublicFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 's3CloudStorage',
        method: 'existsPublicFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 's3CloudStorage',
        methodName: 'existsPublicFile',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> deletePublicFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 's3CloudStorage',
        method: 'deletePublicFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 's3CloudStorage',
        methodName: 'deletePublicFile',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String?> getPublicUrlForFile(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 's3CloudStorage',
        method: 'getPublicUrlForFile',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 's3CloudStorage',
        methodName: 'getPublicUrlForFile',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String?> getDirectFilePostUrl(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 's3CloudStorage',
        method: 'getDirectFilePostUrl',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 's3CloudStorage',
        methodName: 'getDirectFilePostUrl',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool> verifyDirectFileUpload(
    _i1.TestSessionBuilder sessionBuilder,
    String path,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 's3CloudStorage',
        method: 'verifyDirectFileUpload',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 's3CloudStorage',
        methodName: 'verifyDirectFileUpload',
        parameters: _i1.testObjectToJson({'path': path}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _CustomClassProtocolEndpoint {
  _CustomClassProtocolEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<_i7.ProtocolCustomClass> getProtocolField(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'customClassProtocol',
        method: 'getProtocolField',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'customClassProtocol',
        methodName: 'getProtocolField',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i7.ProtocolCustomClass>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _CustomTypesEndpoint {
  _CustomTypesEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<_i8.CustomClass> returnCustomClass(
    _i1.TestSessionBuilder sessionBuilder,
    _i8.CustomClass data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'customTypes',
        method: 'returnCustomClass',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'customTypes',
        methodName: 'returnCustomClass',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i8.CustomClass>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i8.CustomClass?> returnCustomClassNullable(
    _i1.TestSessionBuilder sessionBuilder,
    _i8.CustomClass? data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'customTypes',
        method: 'returnCustomClassNullable',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'customTypes',
        methodName: 'returnCustomClassNullable',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i8.CustomClass?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i8.CustomClass2> returnCustomClass2(
    _i1.TestSessionBuilder sessionBuilder,
    _i8.CustomClass2 data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'customTypes',
        method: 'returnCustomClass2',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'customTypes',
        methodName: 'returnCustomClass2',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i8.CustomClass2>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i8.CustomClass2?> returnCustomClass2Nullable(
    _i1.TestSessionBuilder sessionBuilder,
    _i8.CustomClass2? data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'customTypes',
        method: 'returnCustomClass2Nullable',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'customTypes',
        methodName: 'returnCustomClass2Nullable',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i8.CustomClass2?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i9.ExternalCustomClass> returnExternalCustomClass(
    _i1.TestSessionBuilder sessionBuilder,
    _i9.ExternalCustomClass data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'customTypes',
        method: 'returnExternalCustomClass',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'customTypes',
        methodName: 'returnExternalCustomClass',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i9.ExternalCustomClass>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i9.ExternalCustomClass?> returnExternalCustomClassNullable(
    _i1.TestSessionBuilder sessionBuilder,
    _i9.ExternalCustomClass? data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'customTypes',
        method: 'returnExternalCustomClassNullable',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'customTypes',
        methodName: 'returnExternalCustomClassNullable',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i9.ExternalCustomClass?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i10.FreezedCustomClass> returnFreezedCustomClass(
    _i1.TestSessionBuilder sessionBuilder,
    _i10.FreezedCustomClass data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'customTypes',
        method: 'returnFreezedCustomClass',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'customTypes',
        methodName: 'returnFreezedCustomClass',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i10.FreezedCustomClass>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i10.FreezedCustomClass?> returnFreezedCustomClassNullable(
    _i1.TestSessionBuilder sessionBuilder,
    _i10.FreezedCustomClass? data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'customTypes',
        method: 'returnFreezedCustomClassNullable',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'customTypes',
        methodName: 'returnFreezedCustomClassNullable',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i10.FreezedCustomClass?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _BasicDatabase {
  _BasicDatabase(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> deleteAllSimpleTestData(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'deleteAllSimpleTestData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'deleteAllSimpleTestData',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> deleteSimpleTestDataLessThan(
    _i1.TestSessionBuilder sessionBuilder,
    int num,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'deleteSimpleTestDataLessThan',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'deleteSimpleTestDataLessThan',
        parameters: _i1.testObjectToJson({'num': num}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> findAndDeleteSimpleTestData(
    _i1.TestSessionBuilder sessionBuilder,
    int num,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'findAndDeleteSimpleTestData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'findAndDeleteSimpleTestData',
        parameters: _i1.testObjectToJson({'num': num}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> createSimpleTestData(
    _i1.TestSessionBuilder sessionBuilder,
    int numRows,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'createSimpleTestData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'createSimpleTestData',
        parameters: _i1.testObjectToJson({'numRows': numRows}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<_i11.SimpleData>> findSimpleData(
    _i1.TestSessionBuilder sessionBuilder, {
    required int limit,
    required int offset,
  }) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'findSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'findSimpleData',
        parameters: _i1.testObjectToJson({
          'limit': limit,
          'offset': offset,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<_i11.SimpleData>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i11.SimpleData?> findFirstRowSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    int num,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'findFirstRowSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'findFirstRowSimpleData',
        parameters: _i1.testObjectToJson({'num': num}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i11.SimpleData?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i11.SimpleData?> findByIdSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    int id,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'findByIdSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'findByIdSimpleData',
        parameters: _i1.testObjectToJson({'id': id}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i11.SimpleData?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i12.SimpleDataList?> findSimpleDataRowsLessThan(
    _i1.TestSessionBuilder sessionBuilder,
    int num,
    int offset,
    int limit,
    bool descending,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'findSimpleDataRowsLessThan',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'findSimpleDataRowsLessThan',
        parameters: _i1.testObjectToJson({
          'num': num,
          'offset': offset,
          'limit': limit,
          'descending': descending,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i12.SimpleDataList?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i11.SimpleData> insertRowSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    _i11.SimpleData simpleData,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'insertRowSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'insertRowSimpleData',
        parameters: _i1.testObjectToJson({'simpleData': simpleData}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i11.SimpleData>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i11.SimpleData> updateRowSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    _i11.SimpleData simpleData,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'updateRowSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'updateRowSimpleData',
        parameters: _i1.testObjectToJson({'simpleData': simpleData}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i11.SimpleData>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int> deleteRowSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    _i11.SimpleData simpleData,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'deleteRowSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'deleteRowSimpleData',
        parameters: _i1.testObjectToJson({'simpleData': simpleData}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<int>> deleteWhereSimpleData(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'deleteWhereSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'deleteWhereSimpleData',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<int>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int> countSimpleData(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'countSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'countSimpleData',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i13.Types> insertTypes(
    _i1.TestSessionBuilder sessionBuilder,
    _i13.Types value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'insertTypes',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'insertTypes',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i13.Types>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i13.Types> updateTypes(
    _i1.TestSessionBuilder sessionBuilder,
    _i13.Types value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'updateTypes',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'updateTypes',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i13.Types>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int?> countTypesRows(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'countTypesRows',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'countTypesRows',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<int>> deleteAllInTypes(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'deleteAllInTypes',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'deleteAllInTypes',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<int>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i13.Types?> getTypes(
    _i1.TestSessionBuilder sessionBuilder,
    int id,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'getTypes',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'getTypes',
        parameters: _i1.testObjectToJson({'id': id}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i13.Types?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int?> getTypesRawQuery(
    _i1.TestSessionBuilder sessionBuilder,
    int id,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'getTypesRawQuery',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'getTypesRawQuery',
        parameters: _i1.testObjectToJson({'id': id}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i14.ObjectWithEnum> storeObjectWithEnum(
    _i1.TestSessionBuilder sessionBuilder,
    _i14.ObjectWithEnum object,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'storeObjectWithEnum',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'storeObjectWithEnum',
        parameters: _i1.testObjectToJson({'object': object}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i14.ObjectWithEnum>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i14.ObjectWithEnum?> getObjectWithEnum(
    _i1.TestSessionBuilder sessionBuilder,
    int id,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'getObjectWithEnum',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'getObjectWithEnum',
        parameters: _i1.testObjectToJson({'id': id}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i14.ObjectWithEnum?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i15.ObjectWithObject> storeObjectWithObject(
    _i1.TestSessionBuilder sessionBuilder,
    _i15.ObjectWithObject object,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'storeObjectWithObject',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'storeObjectWithObject',
        parameters: _i1.testObjectToJson({'object': object}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i15.ObjectWithObject>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i15.ObjectWithObject?> getObjectWithObject(
    _i1.TestSessionBuilder sessionBuilder,
    int id,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'getObjectWithObject',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'getObjectWithObject',
        parameters: _i1.testObjectToJson({'id': id}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i15.ObjectWithObject?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int> deleteAll(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'deleteAll',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'deleteAll',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool> testByteDataStore(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'basicDatabase',
        method: 'testByteDataStore',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'basicDatabase',
        methodName: 'testByteDataStore',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _TransactionsDatabaseEndpoint {
  _TransactionsDatabaseEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> removeRow(
    _i1.TestSessionBuilder sessionBuilder,
    int num,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'transactionsDatabase',
        method: 'removeRow',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'transactionsDatabase',
        methodName: 'removeRow',
        parameters: _i1.testObjectToJson({'num': num}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool> updateInsertDelete(
    _i1.TestSessionBuilder sessionBuilder,
    int numUpdate,
    int numInsert,
    int numDelete,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'transactionsDatabase',
        method: 'updateInsertDelete',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'transactionsDatabase',
        methodName: 'updateInsertDelete',
        parameters: _i1.testObjectToJson({
          'numUpdate': numUpdate,
          'numInsert': numInsert,
          'numDelete': numDelete,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _DeprecationEndpoint {
  _DeprecationEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> setGlobalDouble(
    _i1.TestSessionBuilder sessionBuilder,
    double? value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'deprecation',
        method: 'setGlobalDouble',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'deprecation',
        methodName: 'setGlobalDouble',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<double> getGlobalDouble(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'deprecation',
        method: 'getGlobalDouble',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'deprecation',
        methodName: 'getGlobalDouble',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<double>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _EchoRequestEndpoint {
  _EchoRequestEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<String?> echoAuthenticationKey(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'echoRequest',
        method: 'echoAuthenticationKey',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'echoRequest',
        methodName: 'echoAuthenticationKey',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<String>?> echoHttpHeader(
    _i1.TestSessionBuilder sessionBuilder,
    String headerName,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'echoRequest',
        method: 'echoHttpHeader',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'echoRequest',
        methodName: 'echoHttpHeader',
        parameters: _i1.testObjectToJson({'headerName': headerName}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<String>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _EmailAuthTestMethods {
  _EmailAuthTestMethods(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<String?> findVerificationCode(
    _i1.TestSessionBuilder sessionBuilder,
    String userName,
    String email,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'emailAuthTestMethods',
        method: 'findVerificationCode',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'emailAuthTestMethods',
        methodName: 'findVerificationCode',
        parameters: _i1.testObjectToJson({
          'userName': userName,
          'email': email,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String?> findResetCode(
    _i1.TestSessionBuilder sessionBuilder,
    String email,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'emailAuthTestMethods',
        method: 'findResetCode',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'emailAuthTestMethods',
        methodName: 'findResetCode',
        parameters: _i1.testObjectToJson({'email': email}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> tearDown(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'emailAuthTestMethods',
        method: 'tearDown',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'emailAuthTestMethods',
        methodName: 'tearDown',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool> createUser(
    _i1.TestSessionBuilder sessionBuilder,
    String userName,
    String email,
    String password,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'emailAuthTestMethods',
        method: 'createUser',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'emailAuthTestMethods',
        methodName: 'createUser',
        parameters: _i1.testObjectToJson({
          'userName': userName,
          'email': email,
          'password': password,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _ExceptionTestEndpoint {
  _ExceptionTestEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<String> throwNormalException(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'exceptionTest',
        method: 'throwNormalException',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'exceptionTest',
        methodName: 'throwNormalException',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String> throwExceptionWithData(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'exceptionTest',
        method: 'throwExceptionWithData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'exceptionTest',
        methodName: 'throwExceptionWithData',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String> workingWithoutException(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'exceptionTest',
        method: 'workingWithoutException',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'exceptionTest',
        methodName: 'workingWithoutException',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _FailedCallsEndpoint {
  _FailedCallsEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> failedCall(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'failedCalls',
        method: 'failedCall',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'failedCalls',
        methodName: 'failedCall',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> failedDatabaseQuery(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'failedCalls',
        method: 'failedDatabaseQuery',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'failedCalls',
        methodName: 'failedDatabaseQuery',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool> failedDatabaseQueryCaughtException(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'failedCalls',
        method: 'failedDatabaseQueryCaughtException',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'failedCalls',
        methodName: 'failedDatabaseQueryCaughtException',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> slowCall(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'failedCalls',
        method: 'slowCall',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'failedCalls',
        methodName: 'slowCall',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> caughtException(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'failedCalls',
        method: 'caughtException',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'failedCalls',
        methodName: 'caughtException',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _FieldScopesEndpoint {
  _FieldScopesEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> storeObject(
    _i1.TestSessionBuilder sessionBuilder,
    _i16.ObjectFieldScopes object,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'fieldScopes',
        method: 'storeObject',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'fieldScopes',
        methodName: 'storeObject',
        parameters: _i1.testObjectToJson({'object': object}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i16.ObjectFieldScopes?> retrieveObject(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'fieldScopes',
        method: 'retrieveObject',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'fieldScopes',
        methodName: 'retrieveObject',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i16.ObjectFieldScopes?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _FutureCallsEndpoint {
  _FutureCallsEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> makeFutureCall(
    _i1.TestSessionBuilder sessionBuilder,
    _i11.SimpleData? data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'futureCalls',
        method: 'makeFutureCall',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'futureCalls',
        methodName: 'makeFutureCall',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _ListParametersEndpoint {
  _ListParametersEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<List<int>> returnIntList(
    _i1.TestSessionBuilder sessionBuilder,
    List<int> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnIntList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnIntList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<int>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<List<int>>> returnIntListList(
    _i1.TestSessionBuilder sessionBuilder,
    List<List<int>> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnIntListList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnIntListList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<List<int>>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<int>?> returnIntListNullable(
    _i1.TestSessionBuilder sessionBuilder,
    List<int>? list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnIntListNullable',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnIntListNullable',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<int>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<List<int>?>> returnIntListNullableList(
    _i1.TestSessionBuilder sessionBuilder,
    List<List<int>?> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnIntListNullableList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnIntListNullableList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<List<int>?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<List<int>>?> returnIntListListNullable(
    _i1.TestSessionBuilder sessionBuilder,
    List<List<int>>? list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnIntListListNullable',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnIntListListNullable',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<List<int>>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<int?>> returnIntListNullableInts(
    _i1.TestSessionBuilder sessionBuilder,
    List<int?> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnIntListNullableInts',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnIntListNullableInts',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<int?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<int?>?> returnNullableIntListNullableInts(
    _i1.TestSessionBuilder sessionBuilder,
    List<int?>? list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnNullableIntListNullableInts',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnNullableIntListNullableInts',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<int?>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<double>> returnDoubleList(
    _i1.TestSessionBuilder sessionBuilder,
    List<double> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnDoubleList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnDoubleList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<double>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<double?>> returnDoubleListNullableDoubles(
    _i1.TestSessionBuilder sessionBuilder,
    List<double?> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnDoubleListNullableDoubles',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnDoubleListNullableDoubles',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<double?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<bool>> returnBoolList(
    _i1.TestSessionBuilder sessionBuilder,
    List<bool> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnBoolList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnBoolList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<bool>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<bool?>> returnBoolListNullableBools(
    _i1.TestSessionBuilder sessionBuilder,
    List<bool?> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnBoolListNullableBools',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnBoolListNullableBools',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<bool?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<String>> returnStringList(
    _i1.TestSessionBuilder sessionBuilder,
    List<String> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnStringList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnStringList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<String>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<String?>> returnStringListNullableStrings(
    _i1.TestSessionBuilder sessionBuilder,
    List<String?> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnStringListNullableStrings',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnStringListNullableStrings',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<String?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<DateTime>> returnDateTimeList(
    _i1.TestSessionBuilder sessionBuilder,
    List<DateTime> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnDateTimeList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnDateTimeList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<DateTime>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<DateTime?>> returnDateTimeListNullableDateTimes(
    _i1.TestSessionBuilder sessionBuilder,
    List<DateTime?> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnDateTimeListNullableDateTimes',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnDateTimeListNullableDateTimes',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<DateTime?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<_i5.ByteData>> returnByteDataList(
    _i1.TestSessionBuilder sessionBuilder,
    List<_i5.ByteData> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnByteDataList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnByteDataList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<_i5.ByteData>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<_i5.ByteData?>> returnByteDataListNullableByteDatas(
    _i1.TestSessionBuilder sessionBuilder,
    List<_i5.ByteData?> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnByteDataListNullableByteDatas',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnByteDataListNullableByteDatas',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<_i5.ByteData?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<_i11.SimpleData>> returnSimpleDataList(
    _i1.TestSessionBuilder sessionBuilder,
    List<_i11.SimpleData> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnSimpleDataList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnSimpleDataList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<_i11.SimpleData>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<_i11.SimpleData?>> returnSimpleDataListNullableSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    List<_i11.SimpleData?> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnSimpleDataListNullableSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnSimpleDataListNullableSimpleData',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<_i11.SimpleData?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<_i11.SimpleData>?> returnSimpleDataListNullable(
    _i1.TestSessionBuilder sessionBuilder,
    List<_i11.SimpleData>? list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnSimpleDataListNullable',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnSimpleDataListNullable',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<_i11.SimpleData>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<_i11.SimpleData?>?>
      returnNullableSimpleDataListNullableSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    List<_i11.SimpleData?>? list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnNullableSimpleDataListNullableSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnNullableSimpleDataListNullableSimpleData',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<_i11.SimpleData?>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<Duration>> returnDurationList(
    _i1.TestSessionBuilder sessionBuilder,
    List<Duration> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnDurationList',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnDurationList',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<Duration>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<Duration?>> returnDurationListNullableDurations(
    _i1.TestSessionBuilder sessionBuilder,
    List<Duration?> list,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'listParameters',
        method: 'returnDurationListNullableDurations',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'listParameters',
        methodName: 'returnDurationListNullableDurations',
        parameters: _i1.testObjectToJson({'list': list}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<Duration?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _LoggingEndpoint {
  _LoggingEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> slowQueryMethod(
    _i1.TestSessionBuilder sessionBuilder,
    int seconds,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'slowQueryMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'slowQueryMethod',
        parameters: _i1.testObjectToJson({'seconds': seconds}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> queryMethod(
    _i1.TestSessionBuilder sessionBuilder,
    int queries,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'queryMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'queryMethod',
        parameters: _i1.testObjectToJson({'queries': queries}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> failedQueryMethod(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'failedQueryMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'failedQueryMethod',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> slowMethod(
    _i1.TestSessionBuilder sessionBuilder,
    int delayMillis,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'slowMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'slowMethod',
        parameters: _i1.testObjectToJson({'delayMillis': delayMillis}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> failingMethod(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'failingMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'failingMethod',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> emptyMethod(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'emptyMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'emptyMethod',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> log(
    _i1.TestSessionBuilder sessionBuilder,
    String message,
    List<int> logLevels,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'log',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'log',
        parameters: _i1.testObjectToJson({
          'message': message,
          'logLevels': logLevels,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> logInfo(
    _i1.TestSessionBuilder sessionBuilder,
    String message,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'logInfo',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'logInfo',
        parameters: _i1.testObjectToJson({'message': message}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> logDebugAndInfoAndError(
    _i1.TestSessionBuilder sessionBuilder,
    String debug,
    String info,
    String error,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'logDebugAndInfoAndError',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'logDebugAndInfoAndError',
        parameters: _i1.testObjectToJson({
          'debug': debug,
          'info': info,
          'error': error,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> twoQueries(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'logging',
        method: 'twoQueries',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'logging',
        methodName: 'twoQueries',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Stream<int> streamEmpty(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> input,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'logging',
          method: 'streamEmpty',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'logging',
          methodName: 'streamEmpty',
          arguments: {},
          requestedInputStreams: ['input'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'input': input},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> streamLogging(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> input,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'logging',
          method: 'streamLogging',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'logging',
          methodName: 'streamLogging',
          arguments: {},
          requestedInputStreams: ['input'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'input': input},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> streamQueryLogging(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> input,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'logging',
          method: 'streamQueryLogging',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'logging',
          methodName: 'streamQueryLogging',
          arguments: {},
          requestedInputStreams: ['input'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'input': input},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> streamException(_i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'logging',
          method: 'streamException',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'logging',
          methodName: 'streamException',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }
}

class _StreamLogging {
  _StreamLogging(
    _endpointDispatch,
    _serializationManager,
  );
}

class _StreamQueryLogging {
  _StreamQueryLogging(
    _endpointDispatch,
    _serializationManager,
  );
}

class _LoggingDisabledEndpoint {
  _LoggingDisabledEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> logInfo(
    _i1.TestSessionBuilder sessionBuilder,
    String message,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'loggingDisabled',
        method: 'logInfo',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'loggingDisabled',
        methodName: 'logInfo',
        parameters: _i1.testObjectToJson({'message': message}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _MapParametersEndpoint {
  _MapParametersEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<Map<String, int>> returnIntMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, int> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnIntMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnIntMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, int>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, int>?> returnIntMapNullable(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, int>? map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnIntMapNullable',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnIntMapNullable',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, int>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, Map<String, int>>> returnNestedIntMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, Map<String, int>> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnNestedIntMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnNestedIntMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, Map<String, int>>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, int?>> returnIntMapNullableInts(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, int?> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnIntMapNullableInts',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnIntMapNullableInts',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, int?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, int?>?> returnNullableIntMapNullableInts(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, int?>? map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnNullableIntMapNullableInts',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnNullableIntMapNullableInts',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, int?>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<int, int>> returnIntIntMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<int, int> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnIntIntMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnIntIntMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<int, int>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<_i17.TestEnum, int>> returnEnumIntMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<_i17.TestEnum, int> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnEnumIntMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnEnumIntMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<_i17.TestEnum, int>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, _i17.TestEnum>> returnEnumMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, _i17.TestEnum> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnEnumMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnEnumMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, _i17.TestEnum>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, double>> returnDoubleMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, double> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnDoubleMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnDoubleMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, double>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, double?>> returnDoubleMapNullableDoubles(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, double?> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnDoubleMapNullableDoubles',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnDoubleMapNullableDoubles',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, double?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, bool>> returnBoolMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, bool> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnBoolMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnBoolMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, bool>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, bool?>> returnBoolMapNullableBools(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, bool?> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnBoolMapNullableBools',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnBoolMapNullableBools',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, bool?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, String>> returnStringMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, String> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnStringMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnStringMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, String>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, String?>> returnStringMapNullableStrings(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, String?> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnStringMapNullableStrings',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnStringMapNullableStrings',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, String?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, DateTime>> returnDateTimeMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, DateTime> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnDateTimeMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnDateTimeMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, DateTime>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, DateTime?>> returnDateTimeMapNullableDateTimes(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, DateTime?> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnDateTimeMapNullableDateTimes',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnDateTimeMapNullableDateTimes',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, DateTime?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, _i5.ByteData>> returnByteDataMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, _i5.ByteData> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnByteDataMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnByteDataMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, _i5.ByteData>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, _i5.ByteData?>> returnByteDataMapNullableByteDatas(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, _i5.ByteData?> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnByteDataMapNullableByteDatas',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnByteDataMapNullableByteDatas',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, _i5.ByteData?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, _i11.SimpleData>> returnSimpleDataMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, _i11.SimpleData> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnSimpleDataMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnSimpleDataMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, _i11.SimpleData>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, _i11.SimpleData?>>
      returnSimpleDataMapNullableSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, _i11.SimpleData?> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnSimpleDataMapNullableSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnSimpleDataMapNullableSimpleData',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, _i11.SimpleData?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, _i11.SimpleData>?> returnSimpleDataMapNullable(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, _i11.SimpleData>? map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnSimpleDataMapNullable',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnSimpleDataMapNullable',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, _i11.SimpleData>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, _i11.SimpleData?>?>
      returnNullableSimpleDataMapNullableSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, _i11.SimpleData?>? map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnNullableSimpleDataMapNullableSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnNullableSimpleDataMapNullableSimpleData',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, _i11.SimpleData?>?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, Duration>> returnDurationMap(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, Duration> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnDurationMap',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnDurationMap',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, Duration>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<Map<String, Duration?>> returnDurationMapNullableDurations(
    _i1.TestSessionBuilder sessionBuilder,
    Map<String, Duration?> map,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'mapParameters',
        method: 'returnDurationMapNullableDurations',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'mapParameters',
        methodName: 'returnDurationMapNullableDurations',
        parameters: _i1.testObjectToJson({'map': map}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<Map<String, Duration?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _MethodSignaturePermutationsEndpoint {
  _MethodSignaturePermutationsEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<String> echoPositionalArg(
    _i1.TestSessionBuilder sessionBuilder,
    String string,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodSignaturePermutations',
        method: 'echoPositionalArg',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodSignaturePermutations',
        methodName: 'echoPositionalArg',
        parameters: _i1.testObjectToJson({'string': string}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String> echoNamedArg(
    _i1.TestSessionBuilder sessionBuilder, {
    required String string,
  }) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodSignaturePermutations',
        method: 'echoNamedArg',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodSignaturePermutations',
        methodName: 'echoNamedArg',
        parameters: _i1.testObjectToJson({'string': string}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String?> echoNullableNamedArg(
    _i1.TestSessionBuilder sessionBuilder, {
    String? string,
  }) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodSignaturePermutations',
        method: 'echoNullableNamedArg',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodSignaturePermutations',
        methodName: 'echoNullableNamedArg',
        parameters: _i1.testObjectToJson({'string': string}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String?> echoOptionalArg(
    _i1.TestSessionBuilder sessionBuilder, [
    String? string,
  ]) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodSignaturePermutations',
        method: 'echoOptionalArg',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodSignaturePermutations',
        methodName: 'echoOptionalArg',
        parameters: _i1.testObjectToJson({'string': string}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<String?>> echoPositionalAndNamedArgs(
    _i1.TestSessionBuilder sessionBuilder,
    String string1, {
    required String string2,
  }) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodSignaturePermutations',
        method: 'echoPositionalAndNamedArgs',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodSignaturePermutations',
        methodName: 'echoPositionalAndNamedArgs',
        parameters: _i1.testObjectToJson({
          'string1': string1,
          'string2': string2,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<String?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<String?>> echoPositionalAndNullableNamedArgs(
    _i1.TestSessionBuilder sessionBuilder,
    String string1, {
    String? string2,
  }) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodSignaturePermutations',
        method: 'echoPositionalAndNullableNamedArgs',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodSignaturePermutations',
        methodName: 'echoPositionalAndNullableNamedArgs',
        parameters: _i1.testObjectToJson({
          'string1': string1,
          'string2': string2,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<String?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<String?>> echoPositionalAndOptionalArgs(
    _i1.TestSessionBuilder sessionBuilder,
    String string1, [
    String? string2,
  ]) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodSignaturePermutations',
        method: 'echoPositionalAndOptionalArgs',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodSignaturePermutations',
        methodName: 'echoPositionalAndOptionalArgs',
        parameters: _i1.testObjectToJson({
          'string1': string1,
          'string2': string2,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<String?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Stream<String> echoNamedArgStream(
    _i1.TestSessionBuilder sessionBuilder, {
    required _i3.Stream<String> strings,
  }) {
    var _localTestStreamManager = _i1.TestStreamManager<String>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodSignaturePermutations',
          method: 'echoNamedArgStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodSignaturePermutations',
          methodName: 'echoNamedArgStream',
          arguments: {},
          requestedInputStreams: ['strings'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'strings': strings},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<String> echoNamedArgStreamAsFuture(
    _i1.TestSessionBuilder sessionBuilder, {
    required _i3.Stream<String> strings,
  }) async {
    var _localTestStreamManager = _i1.TestStreamManager<String>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodSignaturePermutations',
        method: 'echoNamedArgStreamAsFuture',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodSignaturePermutations',
        methodName: 'echoNamedArgStreamAsFuture',
        arguments: {},
        requestedInputStreams: ['strings'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'strings': strings},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Stream<String> echoPositionalArgStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<String> strings,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<String>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodSignaturePermutations',
          method: 'echoPositionalArgStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodSignaturePermutations',
          methodName: 'echoPositionalArgStream',
          arguments: {},
          requestedInputStreams: ['strings'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'strings': strings},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<String> echoPositionalArgStreamAsFuture(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<String> strings,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<String>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodSignaturePermutations',
        method: 'echoPositionalArgStreamAsFuture',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodSignaturePermutations',
        methodName: 'echoPositionalArgStreamAsFuture',
        arguments: {},
        requestedInputStreams: ['strings'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'strings': strings},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }
}

class _MethodStreaming {
  _MethodStreaming(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Stream<int> simpleStream(_i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'simpleStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'simpleStream',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> neverEndingStreamWithDelay(
    _i1.TestSessionBuilder sessionBuilder,
    int millisecondsDelay,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'neverEndingStreamWithDelay',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'neverEndingStreamWithDelay',
          arguments: {'millisecondsDelay': millisecondsDelay},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<void> methodCallEndpoint(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'methodCallEndpoint',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'methodCallEndpoint',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int> intReturnFromStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'intReturnFromStream',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'intReturnFromStream',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<int?> nullableIntReturnFromStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int?> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<int?>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'nullableIntReturnFromStream',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'nullableIntReturnFromStream',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Stream<int?> getBroadcastStream(_i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int?>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'getBroadcastStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'getBroadcastStream',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<bool> wasBroadcastStreamCanceled(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'wasBroadcastStreamCanceled',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'wasBroadcastStreamCanceled',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool> wasSessionWillCloseListenerCalled(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'wasSessionWillCloseListenerCalled',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'wasSessionWillCloseListenerCalled',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Stream<int> intStreamFromValue(
    _i1.TestSessionBuilder sessionBuilder,
    int value,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'intStreamFromValue',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'intStreamFromValue',
          arguments: {'value': value},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> intEchoStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'intEchoStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'intEchoStream',
          arguments: {},
          requestedInputStreams: ['stream'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'stream': stream},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<dynamic> dynamicEchoStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<dynamic> stream,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<dynamic>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'dynamicEchoStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'dynamicEchoStream',
          arguments: {},
          requestedInputStreams: ['stream'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'stream': stream},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int?> nullableIntEchoStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int?> stream,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int?>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'nullableIntEchoStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'nullableIntEchoStream',
          arguments: {},
          requestedInputStreams: ['stream'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'stream': stream},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<void> voidReturnAfterStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<void>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'voidReturnAfterStream',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'voidReturnAfterStream',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Stream<int> multipleIntEchoStreams(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream1,
    _i3.Stream<int> stream2,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'multipleIntEchoStreams',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'multipleIntEchoStreams',
          arguments: {},
          requestedInputStreams: [
            'stream1',
            'stream2',
          ],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {
            'stream1': stream1,
            'stream2': stream2,
          },
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<void> directVoidReturnWithStreamInput(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<void>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'directVoidReturnWithStreamInput',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'directVoidReturnWithStreamInput',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<int> directOneIntReturnWithStreamInput(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'directOneIntReturnWithStreamInput',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'directOneIntReturnWithStreamInput',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<int> simpleInputReturnStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'simpleInputReturnStream',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'simpleInputReturnStream',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Stream<int> simpleStreamWithParameter(
    _i1.TestSessionBuilder sessionBuilder,
    int value,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'simpleStreamWithParameter',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'simpleStreamWithParameter',
          arguments: {'value': value},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<_i11.SimpleData> simpleDataStream(
    _i1.TestSessionBuilder sessionBuilder,
    int value,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<_i11.SimpleData>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'simpleDataStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'simpleDataStream',
          arguments: {'value': value},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<_i11.SimpleData> simpleInOutDataStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<_i11.SimpleData> simpleDataStream,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<_i11.SimpleData>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'simpleInOutDataStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'simpleInOutDataStream',
          arguments: {},
          requestedInputStreams: ['simpleDataStream'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'simpleDataStream': simpleDataStream},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<void> simpleEndpoint(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'simpleEndpoint',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'simpleEndpoint',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> intParameter(
    _i1.TestSessionBuilder sessionBuilder,
    int value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'intParameter',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'intParameter',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int> doubleInputValue(
    _i1.TestSessionBuilder sessionBuilder,
    int value,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'doubleInputValue',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'doubleInputValue',
        parameters: _i1.testObjectToJson({'value': value}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> delayedResponse(
    _i1.TestSessionBuilder sessionBuilder,
    int delay,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'delayedResponse',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'delayedResponse',
        parameters: _i1.testObjectToJson({'delay': delay}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Stream<int> delayedStreamResponse(
    _i1.TestSessionBuilder sessionBuilder,
    int delay,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'delayedStreamResponse',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'delayedStreamResponse',
          arguments: {'delay': delay},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<void> delayedNeverListenedInputStream(
    _i1.TestSessionBuilder sessionBuilder,
    int delay,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<void>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'delayedNeverListenedInputStream',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'delayedNeverListenedInputStream',
        arguments: {'delay': delay},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<void> delayedPausedInputStream(
    _i1.TestSessionBuilder sessionBuilder,
    int delay,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<void>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'delayedPausedInputStream',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'delayedPausedInputStream',
        arguments: {'delay': delay},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<void> completeAllDelayedResponses(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'completeAllDelayedResponses',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'completeAllDelayedResponses',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> inStreamThrowsException(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<void>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'inStreamThrowsException',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'inStreamThrowsException',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<void> inStreamThrowsSerializableException(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<void>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'inStreamThrowsSerializableException',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'inStreamThrowsSerializableException',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Stream<int> outStreamThrowsException(
      _i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'outStreamThrowsException',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'outStreamThrowsException',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> outStreamThrowsSerializableException(
      _i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'outStreamThrowsSerializableException',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'outStreamThrowsSerializableException',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<void> throwsExceptionVoid(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<void>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'throwsExceptionVoid',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'throwsExceptionVoid',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<void> throwsSerializableExceptionVoid(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<void>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'throwsSerializableExceptionVoid',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'throwsSerializableExceptionVoid',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<int> throwsException(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'throwsException',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'throwsException',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<int> throwsSerializableException(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'throwsSerializableException',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'throwsSerializableException',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Stream<int> throwsExceptionStream(_i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'throwsExceptionStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'throwsExceptionStream',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> exceptionThrownBeforeStreamReturn(
      _i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'exceptionThrownBeforeStreamReturn',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'exceptionThrownBeforeStreamReturn',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> exceptionThrownInStreamReturn(
      _i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'exceptionThrownInStreamReturn',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'exceptionThrownInStreamReturn',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> throwsSerializableExceptionStream(
      _i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'methodStreaming',
          method: 'throwsSerializableExceptionStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'methodStreaming',
          methodName: 'throwsSerializableExceptionStream',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<bool> didInputStreamHaveError(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<bool>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'didInputStreamHaveError',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'didInputStreamHaveError',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<bool> didInputStreamHaveSerializableExceptionError(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<bool>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'methodStreaming',
        method: 'didInputStreamHaveSerializableExceptionError',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'methodStreaming',
        methodName: 'didInputStreamHaveSerializableExceptionError',
        arguments: {},
        requestedInputStreams: ['stream'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'stream': stream},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }
}

class _AuthenticatedMethodStreaming {
  _AuthenticatedMethodStreaming(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Stream<int> simpleStream(_i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'authenticatedMethodStreaming',
          method: 'simpleStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'authenticatedMethodStreaming',
          methodName: 'simpleStream',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> intEchoStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'authenticatedMethodStreaming',
          method: 'intEchoStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'authenticatedMethodStreaming',
          methodName: 'intEchoStream',
          arguments: {},
          requestedInputStreams: ['stream'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'stream': stream},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }
}

class _ModuleSerializationEndpoint {
  _ModuleSerializationEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<bool> serializeModuleObject(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'moduleSerialization',
        method: 'serializeModuleObject',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'moduleSerialization',
        methodName: 'serializeModuleObject',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i18.ModuleClass> modifyModuleObject(
    _i1.TestSessionBuilder sessionBuilder,
    _i18.ModuleClass object,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'moduleSerialization',
        method: 'modifyModuleObject',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'moduleSerialization',
        methodName: 'modifyModuleObject',
        parameters: _i1.testObjectToJson({'object': object}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i18.ModuleClass>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i19.ModuleDatatype> serializeNestedModuleObject(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'moduleSerialization',
        method: 'serializeNestedModuleObject',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'moduleSerialization',
        methodName: 'serializeNestedModuleObject',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i19.ModuleDatatype>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _NamedParametersEndpoint {
  _NamedParametersEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<bool> namedParametersMethod(
    _i1.TestSessionBuilder sessionBuilder, {
    required int namedInt,
    required int intWithDefaultValue,
    int? nullableInt,
    int? nullableIntWithDefaultValue,
  }) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'namedParameters',
        method: 'namedParametersMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'namedParameters',
        methodName: 'namedParametersMethod',
        parameters: _i1.testObjectToJson({
          'namedInt': namedInt,
          'intWithDefaultValue': intWithDefaultValue,
          'nullableInt': nullableInt,
          'nullableIntWithDefaultValue': nullableIntWithDefaultValue,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<bool> namedParametersMethodEqualInts(
    _i1.TestSessionBuilder sessionBuilder, {
    required int namedInt,
    int? nullableInt,
  }) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'namedParameters',
        method: 'namedParametersMethodEqualInts',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'namedParameters',
        methodName: 'namedParametersMethodEqualInts',
        parameters: _i1.testObjectToJson({
          'namedInt': namedInt,
          'nullableInt': nullableInt,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _OptionalParametersEndpoint {
  _OptionalParametersEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<int?> returnOptionalInt(
    _i1.TestSessionBuilder sessionBuilder, [
    int? optionalInt,
  ]) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'optionalParameters',
        method: 'returnOptionalInt',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'optionalParameters',
        methodName: 'returnOptionalInt',
        parameters: _i1.testObjectToJson({'optionalInt': optionalInt}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _RedisEndpoint {
  _RedisEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> setSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    String key,
    _i11.SimpleData data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'redis',
        method: 'setSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'redis',
        methodName: 'setSimpleData',
        parameters: _i1.testObjectToJson({
          'key': key,
          'data': data,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> setSimpleDataWithLifetime(
    _i1.TestSessionBuilder sessionBuilder,
    String key,
    _i11.SimpleData data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'redis',
        method: 'setSimpleDataWithLifetime',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'redis',
        methodName: 'setSimpleDataWithLifetime',
        parameters: _i1.testObjectToJson({
          'key': key,
          'data': data,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i11.SimpleData?> getSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    String key,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'redis',
        method: 'getSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'redis',
        methodName: 'getSimpleData',
        parameters: _i1.testObjectToJson({'key': key}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i11.SimpleData?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> deleteSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    String key,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'redis',
        method: 'deleteSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'redis',
        methodName: 'deleteSimpleData',
        parameters: _i1.testObjectToJson({'key': key}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> resetMessageCentralTest(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'redis',
        method: 'resetMessageCentralTest',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'redis',
        methodName: 'resetMessageCentralTest',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i11.SimpleData?> listenToChannel(
    _i1.TestSessionBuilder sessionBuilder,
    String channel,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'redis',
        method: 'listenToChannel',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'redis',
        methodName: 'listenToChannel',
        parameters: _i1.testObjectToJson({'channel': channel}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i11.SimpleData?>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> postToChannel(
    _i1.TestSessionBuilder sessionBuilder,
    String channel,
    _i11.SimpleData data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'redis',
        method: 'postToChannel',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'redis',
        methodName: 'postToChannel',
        parameters: _i1.testObjectToJson({
          'channel': channel,
          'data': data,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int> countSubscribedChannels(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'redis',
        method: 'countSubscribedChannels',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'redis',
        methodName: 'countSubscribedChannels',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _ServerOnlyScopedFieldModelEndpoint {
  _ServerOnlyScopedFieldModelEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<_i20.ScopeServerOnlyField> getScopeServerOnlyField(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'serverOnlyScopedFieldModel',
        method: 'getScopeServerOnlyField',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'serverOnlyScopedFieldModel',
        methodName: 'getScopeServerOnlyField',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i20.ScopeServerOnlyField>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _ServerOnlyScopedFieldChildModelEndpoint {
  _ServerOnlyScopedFieldChildModelEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<_i21.ScopeServerOnlyFieldChild> getProtocolField(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'serverOnlyScopedFieldChildModel',
        method: 'getProtocolField',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'serverOnlyScopedFieldChildModel',
        methodName: 'getProtocolField',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i21.ScopeServerOnlyFieldChild>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _SignInRequiredEndpoint {
  _SignInRequiredEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<bool> testMethod(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'signInRequired',
        method: 'testMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'signInRequired',
        methodName: 'testMethod',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _AdminScopeRequiredEndpoint {
  _AdminScopeRequiredEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<bool> testMethod(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'adminScopeRequired',
        method: 'testMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'adminScopeRequired',
        methodName: 'testMethod',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<bool>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _SimpleEndpoint {
  _SimpleEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<void> setGlobalInt(
    _i1.TestSessionBuilder sessionBuilder,
    int? value, [
    int? secondValue,
  ]) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'simple',
        method: 'setGlobalInt',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'simple',
        methodName: 'setGlobalInt',
        parameters: _i1.testObjectToJson({
          'value': value,
          'secondValue': secondValue,
        }),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> addToGlobalInt(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'simple',
        method: 'addToGlobalInt',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'simple',
        methodName: 'addToGlobalInt',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<int> getGlobalInt(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'simple',
        method: 'getGlobalInt',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'simple',
        methodName: 'getGlobalInt',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<int>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<String> hello(
    _i1.TestSessionBuilder sessionBuilder,
    String name,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'simple',
        method: 'hello',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'simple',
        methodName: 'hello',
        parameters: _i1.testObjectToJson({'name': name}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _StreamingEndpoint {
  _StreamingEndpoint(
    _endpointDispatch,
    _serializationManager,
  );
}

class _StreamingLoggingEndpoint {
  _StreamingLoggingEndpoint(
    _endpointDispatch,
    _serializationManager,
  );
}

class _SubSubDirTestEndpoint {
  _SubSubDirTestEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<String> testMethod(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'subSubDirTest',
        method: 'testMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'subSubDirTest',
        methodName: 'testMethod',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _SubDirTestEndpoint {
  _SubDirTestEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<String> testMethod(_i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'subDirTest',
        method: 'testMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'subDirTest',
        methodName: 'testMethod',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _TestToolsEndpoint {
  _TestToolsEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<_i6.UuidValue> returnsSessionId(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'returnsSessionId',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'returnsSessionId',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i6.UuidValue>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<String?>> returnsSessionEndpointAndMethod(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'returnsSessionEndpointAndMethod',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'returnsSessionEndpointAndMethod',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<String?>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Stream<_i6.UuidValue> returnsSessionIdFromStream(
      _i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<_i6.UuidValue>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'testTools',
          method: 'returnsSessionIdFromStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'testTools',
          methodName: 'returnsSessionIdFromStream',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<String?> returnsSessionEndpointAndMethodFromStream(
      _i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<String?>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'testTools',
          method: 'returnsSessionEndpointAndMethodFromStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'testTools',
          methodName: 'returnsSessionEndpointAndMethodFromStream',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<String> returnsString(
    _i1.TestSessionBuilder sessionBuilder,
    String string,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'returnsString',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'returnsString',
        parameters: _i1.testObjectToJson({'string': string}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Stream<int> returnsStream(
    _i1.TestSessionBuilder sessionBuilder,
    int n,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'testTools',
          method: 'returnsStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'testTools',
          methodName: 'returnsStream',
          arguments: {'n': n},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<List<int>> returnsListFromInputStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> numbers,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<List<int>>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'returnsListFromInputStream',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'returnsListFromInputStream',
        arguments: {},
        requestedInputStreams: ['numbers'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'numbers': numbers},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Future<List<_i11.SimpleData>> returnsSimpleDataListFromInputStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<_i11.SimpleData> simpleDatas,
  ) async {
    var _localTestStreamManager =
        _i1.TestStreamManager<List<_i11.SimpleData>>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'returnsSimpleDataListFromInputStream',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'returnsSimpleDataListFromInputStream',
        arguments: {},
        requestedInputStreams: ['simpleDatas'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'simpleDatas': simpleDatas},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Stream<int> returnsStreamFromInputStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> numbers,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'testTools',
          method: 'returnsStreamFromInputStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'testTools',
          methodName: 'returnsStreamFromInputStream',
          arguments: {},
          requestedInputStreams: ['numbers'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'numbers': numbers},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<void> postNumberToSharedStream(
    _i1.TestSessionBuilder sessionBuilder,
    int number,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'postNumberToSharedStream',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'postNumberToSharedStream',
        parameters: _i1.testObjectToJson({'number': number}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Stream<int> postNumberToSharedStreamAndReturnStream(
    _i1.TestSessionBuilder sessionBuilder,
    int number,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'testTools',
          method: 'postNumberToSharedStreamAndReturnStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'testTools',
          methodName: 'postNumberToSharedStreamAndReturnStream',
          arguments: {'number': number},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Stream<int> listenForNumbersOnSharedStream(
      _i1.TestSessionBuilder sessionBuilder) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'testTools',
          method: 'listenForNumbersOnSharedStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'testTools',
          methodName: 'listenForNumbersOnSharedStream',
          arguments: {},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<void> createSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    int data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'createSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'createSimpleData',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<_i11.SimpleData>> getAllSimpleData(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'getAllSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'getAllSimpleData',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<_i11.SimpleData>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> createSimpleDatasInsideTransactions(
    _i1.TestSessionBuilder sessionBuilder,
    int data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'createSimpleDatasInsideTransactions',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'createSimpleDatasInsideTransactions',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> createSimpleDataAndThrowInsideTransaction(
    _i1.TestSessionBuilder sessionBuilder,
    int data,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'createSimpleDataAndThrowInsideTransaction',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'createSimpleDataAndThrowInsideTransaction',
        parameters: _i1.testObjectToJson({'data': data}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<void> createSimpleDatasInParallelTransactionCalls(
      _i1.TestSessionBuilder sessionBuilder) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'createSimpleDatasInParallelTransactionCalls',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'createSimpleDatasInParallelTransactionCalls',
        parameters: _i1.testObjectToJson({}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<void>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<_i11.SimpleData> echoSimpleData(
    _i1.TestSessionBuilder sessionBuilder,
    _i11.SimpleData simpleData,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'echoSimpleData',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'echoSimpleData',
        parameters: _i1.testObjectToJson({'simpleData': simpleData}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<_i11.SimpleData>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Future<List<_i11.SimpleData>> echoSimpleDatas(
    _i1.TestSessionBuilder sessionBuilder,
    List<_i11.SimpleData> simpleDatas,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'testTools',
        method: 'echoSimpleDatas',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'testTools',
        methodName: 'echoSimpleDatas',
        parameters: _i1.testObjectToJson({'simpleDatas': simpleDatas}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<List<_i11.SimpleData>>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }
}

class _AuthenticatedTestToolsEndpoint {
  _AuthenticatedTestToolsEndpoint(
    this._endpointDispatch,
    this._serializationManager,
  );

  final _i2.EndpointDispatch _endpointDispatch;

  final _i2.SerializationManager _serializationManager;

  _i3.Future<String> returnsString(
    _i1.TestSessionBuilder sessionBuilder,
    String string,
  ) async {
    return _i1.callAwaitableFunctionAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'authenticatedTestTools',
        method: 'returnsString',
      );
      var _localCallContext = await _endpointDispatch.getMethodCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'authenticatedTestTools',
        methodName: 'returnsString',
        parameters: _i1.testObjectToJson({'string': string}),
        serializationManager: _serializationManager,
      );
      var _localReturnValue = await (_localCallContext.method.call(
        _localUniqueSession,
        _localCallContext.arguments,
      ) as _i3.Future<String>);
      await _localUniqueSession.close();
      return _localReturnValue;
    });
  }

  _i3.Stream<int> returnsStream(
    _i1.TestSessionBuilder sessionBuilder,
    int n,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'authenticatedTestTools',
          method: 'returnsStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'authenticatedTestTools',
          methodName: 'returnsStream',
          arguments: {'n': n},
          requestedInputStreams: [],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }

  _i3.Future<List<int>> returnsListFromInputStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> numbers,
  ) async {
    var _localTestStreamManager = _i1.TestStreamManager<List<int>>();
    return _i1
        .callAwaitableFunctionWithStreamInputAndHandleExceptions(() async {
      var _localUniqueSession =
          (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
        endpoint: 'authenticatedTestTools',
        method: 'returnsListFromInputStream',
      );
      var _localCallContext =
          await _endpointDispatch.getMethodStreamCallContext(
        createSessionCallback: (_) => _localUniqueSession,
        endpointPath: 'authenticatedTestTools',
        methodName: 'returnsListFromInputStream',
        arguments: {},
        requestedInputStreams: ['numbers'],
        serializationManager: _serializationManager,
      );
      await _localTestStreamManager.callStreamMethod(
        _localCallContext,
        _localUniqueSession,
        {'numbers': numbers},
      );
      return _localTestStreamManager.outputStreamController.stream;
    });
  }

  _i3.Stream<int> intEchoStream(
    _i1.TestSessionBuilder sessionBuilder,
    _i3.Stream<int> stream,
  ) {
    var _localTestStreamManager = _i1.TestStreamManager<int>();
    _i1.callStreamFunctionAndHandleExceptions(
      () async {
        var _localUniqueSession =
            (sessionBuilder as _i1.InternalTestSessionBuilder).internalBuild(
          endpoint: 'authenticatedTestTools',
          method: 'intEchoStream',
        );
        var _localCallContext =
            await _endpointDispatch.getMethodStreamCallContext(
          createSessionCallback: (_) => _localUniqueSession,
          endpointPath: 'authenticatedTestTools',
          methodName: 'intEchoStream',
          arguments: {},
          requestedInputStreams: ['stream'],
          serializationManager: _serializationManager,
        );
        await _localTestStreamManager.callStreamMethod(
          _localCallContext,
          _localUniqueSession,
          {'stream': stream},
        );
      },
      _localTestStreamManager.outputStreamController,
    );
    return _localTestStreamManager.outputStreamController.stream;
  }
}
