import '/backend/api_requests/api_calls.dart';
import '/components/utility_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'voucher_widget.dart' show VoucherWidget;
import 'package:flutter/material.dart';

class VoucherModel extends FlutterFlowModel<VoucherWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Purchase)] action in Container widget.
  ApiCallResponse? responseBets10;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel;

  @override
  void initState(BuildContext context) {
    utilityCardModel = createModel(context, () => UtilityCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    utilityCardModel.dispose();
  }
}
