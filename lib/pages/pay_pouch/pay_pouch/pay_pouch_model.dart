import '/backend/api_requests/api_calls.dart';
import '/components/balance_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pay_pouch_widget.dart' show PayPouchWidget;
import 'package:flutter/material.dart';

class PayPouchModel extends FlutterFlowModel<PayPouchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get User)] action in PayPouch widget.
  ApiCallResponse? apiAuth;
  // Model for balance_header component.
  late BalanceHeaderModel balanceHeaderModel;
  // Stores action output result for [Backend Call - API (Get Friends Count)] action in Container widget.
  ApiCallResponse? apiCount;

  @override
  void initState(BuildContext context) {
    balanceHeaderModel = createModel(context, () => BalanceHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    balanceHeaderModel.dispose();
  }
}
