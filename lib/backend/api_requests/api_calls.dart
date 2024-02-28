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

class GetPayPouchBalanceCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get PayPouch Balance',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/get_pouch_balance.php',
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

  static String? total(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.total''',
      ));
}

class PayPouchCall {
  static Future<ApiCallResponse> call({
    String? amount = '',
    String? ref = '',
    String? jwt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "amount": "$amount",
  "reference": "$ref"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pay Pouch',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/pay_pouch.php',
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

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ForgotPasswordCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Forgot Password',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/forget_password.php',
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

class ResetPasswordCall {
  static Future<ApiCallResponse> call({
    String? otp = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "otp": "$otp",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reset Password',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/reset_password.php',
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

class GetMyFriendsRequestsCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get My Friends Requests',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/get_friends_request.php',
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
}

class ApproveRequestCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? friendId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "friend_id": "$friendId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Approve request',
      apiUrl:
          'https://m-techsolutions.co.za/app-rank/approve_friend_request.php',
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

class PaypouchWithdrawCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? amount = '',
  }) async {
    final ffApiRequestBody = '''
{
  "amount": "$amount"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Paypouch Withdraw',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/withdraw_debit.php',
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

class GetMyFriendsCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get My Friends',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/get_friends.php',
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
}

class PaySomeoneCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    double? amount,
    String? friendId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "amount": $amount,
  "friend_id": "$friendId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Pay Someone',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/pay_someone.php',
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

class AcceptRequestCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? friendId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "friend_id": "$friendId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Accept Request',
      apiUrl:
          'https://m-techsolutions.co.za/app-rank/approve_friend_request.php',
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

class RejectFriendCall {
  static Future<ApiCallResponse> call({
    String? friendId = '',
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Reject Friend',
      apiUrl:
          'https://m-techsolutions.co.za/app-rank/reject_friend_request.php',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'friend_id': friendId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic friendid(dynamic response) => getJsonField(
        response,
        r'''$.friend_id''',
      );
}

class GetFriendRequesCountCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Friend Reques Count',
      apiUrl:
          'https://m-techsolutions.co.za/app-rank/get_number_of_request.php',
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

  static int? numberRequests(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].nr_friend_request''',
      ));
}

class UploadDocCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    FFUploadedFile? file,
    String? type = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UploadDoc',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/link_account.php',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'file': file,
        'type': type,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class BankDetailsCall {
  static Future<ApiCallResponse> call({
    String? bankname = '',
    String? accountNumber = '',
    String? holder = '',
    String? jwt = '',
  }) async {
    final ffApiRequestBody = '''
{
  "bankname": "$bankname",
  "account_number": "$accountNumber",
  "holder": "$holder"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Bank Details',
      apiUrl: 'https://m-techsolutions.co.za/app-rank/add_banking.php',
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
