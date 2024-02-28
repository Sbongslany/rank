import '/components/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loan_directory_widget.dart' show LoanDirectoryWidget;
import 'package:flutter/material.dart';

class LoanDirectoryModel extends FlutterFlowModel<LoanDirectoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButton component.
  late BackButtonModel backButtonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
