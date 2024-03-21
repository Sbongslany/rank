import '/components/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'about_us_widget.dart' show AboutUsWidget;
import 'package:flutter/material.dart';

class AboutUsModel extends FlutterFlowModel<AboutUsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButton component.
  late BackButtonModel backButtonModel1;
  // Model for backButton component.
  late BackButtonModel backButtonModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    backButtonModel1 = createModel(context, () => BackButtonModel());
    backButtonModel2 = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backButtonModel1.dispose();
    backButtonModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
