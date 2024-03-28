import '/backend/api_requests/api_calls.dart';
import '/components/back_menu_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'pay_user_widget.dart' show PayUserWidget;
import 'package:flutter/material.dart';

class PayUserModel extends FlutterFlowModel<PayUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Friends Count)] action in PayUser widget.
  ApiCallResponse? apiGetFriends;
  // Model for backMenuAppBar component.
  late BackMenuAppBarModel backMenuAppBarModel;
  Completer<ApiCallResponse>? apiRequestCompleter;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    backMenuAppBarModel = createModel(context, () => BackMenuAppBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backMenuAppBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

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
