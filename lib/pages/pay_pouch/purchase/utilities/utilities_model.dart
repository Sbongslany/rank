import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'utilities_widget.dart' show UtilitiesWidget;
import 'package:flutter/material.dart';

class UtilitiesModel extends FlutterFlowModel<UtilitiesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for PhoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  // State field(s) for MobileNetwork widget.
  String? mobileNetworkValue;
  FormFieldController<String>? mobileNetworkValueController;
  // State field(s) for PrePaidAirtimeCellC widget.
  String? prePaidAirtimeCellCValue;
  FormFieldController<String>? prePaidAirtimeCellCValueController;
  // State field(s) for PrePaidAirtimeVodacom widget.
  String? prePaidAirtimeVodacomValue;
  FormFieldController<String>? prePaidAirtimeVodacomValueController;
  // State field(s) for PrePaidAirtimeMTN widget.
  String? prePaidAirtimeMTNValue;
  FormFieldController<String>? prePaidAirtimeMTNValueController;
  // State field(s) for PrePaidAirtimeTelkom widget.
  String? prePaidAirtimeTelkomValue;
  FormFieldController<String>? prePaidAirtimeTelkomValueController;
  // State field(s) for account widget.
  String? accountValue;
  FormFieldController<String>? accountValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
