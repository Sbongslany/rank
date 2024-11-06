import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'purchase_utility_widget.dart' show PurchaseUtilityWidget;
import 'package:flutter/material.dart';

class PurchaseUtilityModel extends FlutterFlowModel<PurchaseUtilityWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // Stores action output result for [Backend Call - API (Purchase)] action in Button widget.
  ApiCallResponse? responseBets10;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }
}
