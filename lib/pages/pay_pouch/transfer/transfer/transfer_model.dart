import '/backend/api_requests/api_calls.dart';
import '/components/balance_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'transfer_widget.dart' show TransferWidget;
import 'package:flutter/material.dart';

class TransferModel extends FlutterFlowModel<TransferWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for balance_header component.
  late BalanceHeaderModel balanceHeaderModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for ref widget.
  String? refValue;
  FormFieldController<String>? refValueController;
  // State field(s) for amount widget.
  String? amountValue;
  FormFieldController<String>? amountValueController;
  // Stores action output result for [Backend Call - API (Paypouch Withdraw)] action in Button widget.
  ApiCallResponse? withdrawResponse;

  @override
  void initState(BuildContext context) {
    balanceHeaderModel = createModel(context, () => BalanceHeaderModel());
  }

  @override
  void dispose() {
    balanceHeaderModel.dispose();
  }
}
