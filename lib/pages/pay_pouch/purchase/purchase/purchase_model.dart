import '/flutter_flow/flutter_flow_util.dart';
import 'purchase_widget.dart' show PurchaseWidget;
import 'package:flutter/material.dart';

class PurchaseModel extends FlutterFlowModel<PurchaseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
