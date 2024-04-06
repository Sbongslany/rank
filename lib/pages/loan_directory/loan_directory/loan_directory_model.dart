import '/components/back_menu_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loan_directory_widget.dart' show LoanDirectoryWidget;
import 'package:flutter/material.dart';

class LoanDirectoryModel extends FlutterFlowModel<LoanDirectoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backMenuAppBar component.
  late BackMenuAppBarModel backMenuAppBarModel;

  @override
  void initState(BuildContext context) {
    backMenuAppBarModel = createModel(context, () => BackMenuAppBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backMenuAppBarModel.dispose();
  }
}
