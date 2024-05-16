import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'electricity_widget.dart' show ElectricityWidget;
import 'package:flutter/material.dart';

class ElectricityModel extends FlutterFlowModel<ElectricityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get User)] action in Electricity widget.
  ApiCallResponse? apiAuth;
  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // Stores action output result for [Backend Call - API (Purchase)] action in Button widget.
  ApiCallResponse? responseEskom;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
