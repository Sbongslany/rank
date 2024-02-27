import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for surname widget.
  FocusNode? surnameFocusNode;
  TextEditingController? surnameController;
  String? Function(BuildContext, String?)? surnameControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for idNumber widget.
  FocusNode? idNumberFocusNode;
  TextEditingController? idNumberController;
  String? Function(BuildContext, String?)? idNumberControllerValidator;
  // State field(s) for QuestionDropDown widget.
  String? questionDropDownValue;
  FormFieldController<String>? questionDropDownValueController;
  // State field(s) for SecurityAnswer widget.
  FocusNode? securityAnswerFocusNode;
  TextEditingController? securityAnswerController;
  String? Function(BuildContext, String?)? securityAnswerControllerValidator;
  // Stores action output result for [Backend Call - API (SignUp)] action in Button widget.
  ApiCallResponse? regResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    surnameFocusNode?.dispose();
    surnameController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    idNumberFocusNode?.dispose();
    idNumberController?.dispose();

    securityAnswerFocusNode?.dispose();
    securityAnswerController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
