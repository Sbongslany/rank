import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dstv_widget.dart' show DstvWidget;
import 'package:flutter/material.dart';

class DstvModel extends FlutterFlowModel<DstvWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in DSTV widget.
  ApiCallResponse? apiAuth;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode1;
  TextEditingController? amountTextController1;
  String? Function(BuildContext, String?)? amountTextController1Validator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode2;
  TextEditingController? amountTextController2;
  String? Function(BuildContext, String?)? amountTextController2Validator;
  // Stores action output result for [Backend Call - API (Purchase)] action in Button widget.
  ApiCallResponse? responseDSTV;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountFocusNode1?.dispose();
    amountTextController1?.dispose();

    amountFocusNode2?.dispose();
    amountTextController2?.dispose();
  }
}
