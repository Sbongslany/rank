import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'request_loan_widget.dart' show RequestLoanWidget;
import 'package:flutter/material.dart';

class RequestLoanModel extends FlutterFlowModel<RequestLoanWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for amount widget.
  String? amountValue;
  FormFieldController<String>? amountValueController;
  // State field(s) for days widget.
  String? daysValue;
  FormFieldController<String>? daysValueController;
  // Stores action output result for [Backend Call - API (Loan Directory)] action in Button widget.
  ApiCallResponse? apiResultmsa;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
