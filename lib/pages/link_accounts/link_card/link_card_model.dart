import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'link_card_widget.dart' show LinkCardWidget;
import 'package:flutter/material.dart';

class LinkCardModel extends FlutterFlowModel<LinkCardWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in LinkCard widget.
  ApiCallResponse? apiAuth;
  // State field(s) for accountNumber widget.
  FocusNode? accountNumberFocusNode;
  TextEditingController? accountNumberTextController;
  String? Function(BuildContext, String?)? accountNumberTextControllerValidator;
  // State field(s) for bankName widget.
  FocusNode? bankNameFocusNode;
  TextEditingController? bankNameTextController;
  String? Function(BuildContext, String?)? bankNameTextControllerValidator;
  // Stores action output result for [Backend Call - API (Bank Details)] action in Button widget.
  ApiCallResponse? bankResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    accountNumberFocusNode?.dispose();
    accountNumberTextController?.dispose();

    bankNameFocusNode?.dispose();
    bankNameTextController?.dispose();
  }
}
