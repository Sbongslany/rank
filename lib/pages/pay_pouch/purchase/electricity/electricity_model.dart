import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'electricity_widget.dart' show ElectricityWidget;
import 'package:flutter/material.dart';

class ElectricityModel extends FlutterFlowModel<ElectricityWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in Electricity widget.
  ApiCallResponse? apiAuth;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode1;
  TextEditingController? amountTextController1;
  String? Function(BuildContext, String?)? amountTextController1Validator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode2;
  TextEditingController? amountTextController2;
  String? Function(BuildContext, String?)? amountTextController2Validator;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode3;
  TextEditingController? amountTextController3;
  String? Function(BuildContext, String?)? amountTextController3Validator;
  // Stores action output result for [Backend Call - API (Purchase)] action in Button widget.
  ApiCallResponse? responseEskom;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountFocusNode1?.dispose();
    amountTextController1?.dispose();

    amountFocusNode2?.dispose();
    amountTextController2?.dispose();

    amountFocusNode3?.dispose();
    amountTextController3?.dispose();
  }
}
