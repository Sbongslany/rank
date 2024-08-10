import '/backend/api_requests/api_calls.dart';
import '/components/balance_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loan_directory_widget.dart' show LoanDirectoryWidget;
import 'package:flutter/material.dart';

class LoanDirectoryModel extends FlutterFlowModel<LoanDirectoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in LoanDirectory widget.
  ApiCallResponse? apiAuth;
  // Model for balance_header component.
  late BalanceHeaderModel balanceHeaderModel;

  @override
  void initState(BuildContext context) {
    balanceHeaderModel = createModel(context, () => BalanceHeaderModel());
  }

  @override
  void dispose() {
    balanceHeaderModel.dispose();
  }
}
