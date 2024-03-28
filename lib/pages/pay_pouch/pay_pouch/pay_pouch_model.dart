import '/backend/api_requests/api_calls.dart';
import '/components/back_menu_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pay_pouch_widget.dart' show PayPouchWidget;
import 'package:flutter/material.dart';

class PayPouchModel extends FlutterFlowModel<PayPouchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backMenuAppBar component.
  late BackMenuAppBarModel backMenuAppBarModel;
  // Stores action output result for [Backend Call - API (Get Friends Count)] action in Container widget.
  ApiCallResponse? apiCount;

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
}
