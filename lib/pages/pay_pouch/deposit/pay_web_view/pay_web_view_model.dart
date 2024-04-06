import '/flutter_flow/flutter_flow_util.dart';
import 'pay_web_view_widget.dart' show PayWebViewWidget;
import 'package:flutter/material.dart';

class PayWebViewModel extends FlutterFlowModel<PayWebViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
