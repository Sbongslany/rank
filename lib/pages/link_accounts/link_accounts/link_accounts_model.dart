import '/backend/api_requests/api_calls.dart';
import '/components/upload_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'link_accounts_widget.dart' show LinkAccountsWidget;
import 'package:flutter/material.dart';

class LinkAccountsModel extends FlutterFlowModel<LinkAccountsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in LinkAccounts widget.
  ApiCallResponse? apiAuth;
  // Model for uploadWidget component.
  late UploadWidgetModel uploadWidgetModel1;
  // Model for uploadWidget component.
  late UploadWidgetModel uploadWidgetModel2;
  // Model for uploadWidget component.
  late UploadWidgetModel uploadWidgetModel3;
  // Model for uploadWidget component.
  late UploadWidgetModel uploadWidgetModel4;

  @override
  void initState(BuildContext context) {
    uploadWidgetModel1 = createModel(context, () => UploadWidgetModel());
    uploadWidgetModel2 = createModel(context, () => UploadWidgetModel());
    uploadWidgetModel3 = createModel(context, () => UploadWidgetModel());
    uploadWidgetModel4 = createModel(context, () => UploadWidgetModel());
  }

  @override
  void dispose() {
    uploadWidgetModel1.dispose();
    uploadWidgetModel2.dispose();
    uploadWidgetModel3.dispose();
    uploadWidgetModel4.dispose();
  }
}
