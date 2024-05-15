import '/backend/api_requests/api_calls.dart';
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

  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response2;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response5;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response12;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response29;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response55;
  // Stores action output result for [Backend Call - API (Purchase)] action in Text widget.
  ApiCallResponse? response110;
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
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
