import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'link_card_widget.dart' show LinkCardWidget;
import 'package:flutter/material.dart';

class LinkCardModel extends FlutterFlowModel<LinkCardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for holder widget.
  FocusNode? holderFocusNode;
  TextEditingController? holderTextController;
  String? Function(BuildContext, String?)? holderTextControllerValidator;
  // State field(s) for accountNumber widget.
  FocusNode? accountNumberFocusNode;
  TextEditingController? accountNumberTextController;
  String? Function(BuildContext, String?)? accountNumberTextControllerValidator;
  // State field(s) for bankName widget.
  FocusNode? bankNameFocusNode;
  TextEditingController? bankNameTextController;
  String? Function(BuildContext, String?)? bankNameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Stores action output result for [Backend Call - API (Bank Details)] action in Button widget.
  ApiCallResponse? bankResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    holderFocusNode?.dispose();
    holderTextController?.dispose();

    accountNumberFocusNode?.dispose();
    accountNumberTextController?.dispose();

    bankNameFocusNode?.dispose();
    bankNameTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();
  }
}
