import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upload_file_widget.dart' show UploadFileWidget;
import 'package:flutter/material.dart';

class UploadFileModel extends FlutterFlowModel<UploadFileWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Link Account Upload)] action in Button widget.
  ApiCallResponse? apiResultvoa;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
