import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'stokvel_withdraw_widget.dart' show StokvelWithdrawWidget;
import 'package:flutter/material.dart';

class StokvelWithdrawModel extends FlutterFlowModel<StokvelWithdrawWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in StokvelWithdraw widget.
  ApiCallResponse? apiAuth;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
