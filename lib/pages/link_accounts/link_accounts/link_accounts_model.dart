import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'link_accounts_widget.dart' show LinkAccountsWidget;
import 'package:flutter/material.dart';

class LinkAccountsModel extends FlutterFlowModel<LinkAccountsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (UploadDoc)] action in Container widget.
  ApiCallResponse? uplaodedDocs;
  bool isDataUploading1 = false;
  List<FFUploadedFile> uploadedLocalFiles1 = [];

  // Stores action output result for [Backend Call - API (UploadDoc)] action in Container widget.
  ApiCallResponse? uplaodedDrivers;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (UploadDoc)] action in Container widget.
  ApiCallResponse? uplaodedIdCard;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
