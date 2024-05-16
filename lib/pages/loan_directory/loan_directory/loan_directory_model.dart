import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loan_directory_widget.dart' show LoanDirectoryWidget;
import 'package:flutter/material.dart';

class LoanDirectoryModel extends FlutterFlowModel<LoanDirectoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get User)] action in LoanDirectory widget.
  ApiCallResponse? apiAuth;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
