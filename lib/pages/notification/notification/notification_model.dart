import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in Notification widget.
  ApiCallResponse? apiAuth;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (Reject Friend)] action in Container widget.
  ApiCallResponse? rejectRespanse;
  // Stores action output result for [Backend Call - API (Approve request)] action in Container widget.
  ApiCallResponse? apiApprove;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
