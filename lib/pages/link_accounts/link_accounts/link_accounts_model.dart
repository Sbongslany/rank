import '/backend/api_requests/api_calls.dart';
import '/components/back_menu_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'link_accounts_widget.dart' show LinkAccountsWidget;
import 'package:flutter/material.dart';

class LinkAccountsModel extends FlutterFlowModel<LinkAccountsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backMenuAppBar component.
  late BackMenuAppBarModel backMenuAppBarModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (UploadDoc)] action in Button widget.
  ApiCallResponse? apiResultg6a;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    backMenuAppBarModel = createModel(context, () => BackMenuAppBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backMenuAppBarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
