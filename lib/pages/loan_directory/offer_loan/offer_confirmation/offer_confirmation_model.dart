import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'offer_confirmation_widget.dart' show OfferConfirmationWidget;
import 'package:flutter/material.dart';

class OfferConfirmationModel extends FlutterFlowModel<OfferConfirmationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get User)] action in OfferConfirmation widget.
  ApiCallResponse? apiAuth;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
