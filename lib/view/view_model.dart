import '/flutter_flow/flutter_flow_util.dart';
import 'view_widget.dart' show ViewWidget;
import 'package:flutter/material.dart';

class ViewModel extends FlutterFlowModel<ViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
