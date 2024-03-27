import '/components/url_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pay_web_view_widget.dart' show PayWebViewWidget;
import 'package:flutter/material.dart';

class PayWebViewModel extends FlutterFlowModel<PayWebViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for url component.
  late UrlModel urlModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    urlModel = createModel(context, () => UrlModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    urlModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
