import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SignUpCall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? cellNumber = '',
    String? password = '',
    String? verifyQuestion = '',
    String? verifyAnswer = '',
    String? idnumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "first_name": "$firstName",
  "last_name": "$lastName",
  "email": "$email",
  "cell_number": "$cellNumber",
  "password": "$password",
  "verify_question": "$verifyQuestion",
  "verify_answer": "$verifyAnswer",
  "idnumber": "$idnumber"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SignUp',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/register.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SignInCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SignIn',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/login.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? jwt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class GetUserCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/get_user.php',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.first_name''',
      ));
  static String? surname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.last_name''',
      ));
  static String? cell(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cell_number''',
      ));
}

class GetUsersCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Users',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/get_all_users.php',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? userId(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? firstName(dynamic response) => (getJsonField(
        response,
        r'''$[:].first_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? lastName(dynamic response) => (getJsonField(
        response,
        r'''$[:].last_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cellNumber(dynamic response) => (getJsonField(
        response,
        r'''$[:].cell_number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? fileName(dynamic response) => (getJsonField(
        response,
        r'''$[:].filename''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class InviteFriendCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? jwt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Invite friend',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/add_friend.php',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
