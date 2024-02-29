import '/backend/api_requests/api_calls.dart';
import '/components/back_menu_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pay_someone_widget.dart' show PaySomeoneWidget;
import 'package:flutter/material.dart';

class PaySomeoneModel extends FlutterFlowModel<PaySomeoneWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backMenuAppBar component.
  late BackMenuAppBarModel backMenuAppBarModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for ref widget.
  String? refValue;
  FormFieldController<String>? refValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (Pay Someone)] action in Button widget.
  ApiCallResponse? apiResult836;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    backMenuAppBarModel = createModel(context, () => BackMenuAppBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    backMenuAppBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
