import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'link_card_widget.dart' show LinkCardWidget;
import 'package:flutter/material.dart';

class LinkCardModel extends FlutterFlowModel<LinkCardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for holder widget.
  FocusNode? holderFocusNode;
  TextEditingController? holderController;
  String? Function(BuildContext, String?)? holderControllerValidator;
  // State field(s) for accountNumber widget.
  FocusNode? accountNumberFocusNode;
  TextEditingController? accountNumberController;
  String? Function(BuildContext, String?)? accountNumberControllerValidator;
  // State field(s) for bankName widget.
  FocusNode? bankNameFocusNode;
  TextEditingController? bankNameController;
  String? Function(BuildContext, String?)? bankNameControllerValidator;
  // Stores action output result for [Backend Call - API (Bank Details)] action in Button widget.
  ApiCallResponse? bankResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    holderFocusNode?.dispose();
    holderController?.dispose();

    accountNumberFocusNode?.dispose();
    accountNumberController?.dispose();

    bankNameFocusNode?.dispose();
    bankNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
