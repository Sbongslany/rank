import '/backend/api_requests/api_calls.dart';
import '/components/utility_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'airtime_widget.dart' show AirtimeWidget;
import 'package:flutter/material.dart';

class AirtimeModel extends FlutterFlowModel<AirtimeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel1;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel2;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel3;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel4;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel5;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel6;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel7;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseMTN2;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseMTN;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response10MTN;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseMTN30;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseMTN60;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseTelkom100;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseCellC5;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response10CellC;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseCell20;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseCellC25;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response30CellC;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseCellC50;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseTel5;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseTel10;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response20Tel;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseTel30;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseTel50;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? responseTelkom1000;

  @override
  void initState(BuildContext context) {
    utilityCardModel1 = createModel(context, () => UtilityCardModel());
    utilityCardModel2 = createModel(context, () => UtilityCardModel());
    utilityCardModel3 = createModel(context, () => UtilityCardModel());
    utilityCardModel4 = createModel(context, () => UtilityCardModel());
    utilityCardModel5 = createModel(context, () => UtilityCardModel());
    utilityCardModel6 = createModel(context, () => UtilityCardModel());
    utilityCardModel7 = createModel(context, () => UtilityCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    utilityCardModel1.dispose();
    utilityCardModel2.dispose();
    utilityCardModel3.dispose();
    utilityCardModel4.dispose();
    utilityCardModel5.dispose();
    utilityCardModel6.dispose();
    utilityCardModel7.dispose();
  }
}
