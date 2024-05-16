import '/backend/api_requests/api_calls.dart';
import '/components/utility_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'voucher_widget.dart' show VoucherWidget;
import 'package:flutter/material.dart';

class VoucherModel extends FlutterFlowModel<VoucherWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get User)] action in Voucher widget.
  ApiCallResponse? apiAuth;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel1;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel2;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel3;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel4;

  @override
  void initState(BuildContext context) {
    utilityCardModel1 = createModel(context, () => UtilityCardModel());
    utilityCardModel2 = createModel(context, () => UtilityCardModel());
    utilityCardModel3 = createModel(context, () => UtilityCardModel());
    utilityCardModel4 = createModel(context, () => UtilityCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    utilityCardModel1.dispose();
    utilityCardModel2.dispose();
    utilityCardModel3.dispose();
    utilityCardModel4.dispose();
  }
}
