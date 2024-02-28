import '/backend/api_requests/api_calls.dart';
import '/components/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'deposit_widget.dart' show DepositWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DepositModel extends FlutterFlowModel<DepositWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for backButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for ref widget.
  String? refValue;
  FormFieldController<String>? refValueController;
  // State field(s) for amount widget.
  String? amountValue;
  FormFieldController<String>? amountValueController;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (Pay Pouch)] action in Button widget.
  ApiCallResponse? paypouchresponse;

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
