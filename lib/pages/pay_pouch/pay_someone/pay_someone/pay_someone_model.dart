import '/backend/api_requests/api_calls.dart';
import '/components/balance_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pay_someone_widget.dart' show PaySomeoneWidget;
import 'package:flutter/material.dart';

class PaySomeoneModel extends FlutterFlowModel<PaySomeoneWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in PaySomeone widget.
  ApiCallResponse? apiAuth;
  // Model for balance_header component.
  late BalanceHeaderModel balanceHeaderModel;
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

  @override
  void initState(BuildContext context) {
    balanceHeaderModel = createModel(context, () => BalanceHeaderModel());
  }

  @override
  void dispose() {
    balanceHeaderModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
