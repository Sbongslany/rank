import '/backend/api_requests/api_calls.dart';
import '/components/balance_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'deposit_widget.dart' show DepositWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DepositModel extends FlutterFlowModel<DepositWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in Deposit widget.
  ApiCallResponse? apiAuth;
  // Model for balance_header component.
  late BalanceHeaderModel balanceHeaderModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for ref widget.
  String? refValue;
  FormFieldController<String>? refValueController;
  // State field(s) for amount widget.
  String? amountValue;
  FormFieldController<String>? amountValueController;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Stores action output result for [Backend Call - API (Pay Pouch)] action in Button widget.
  ApiCallResponse? paypouchresponse;

  @override
  void initState(BuildContext context) {
    balanceHeaderModel = createModel(context, () => BalanceHeaderModel());
  }

  @override
  void dispose() {
    balanceHeaderModel.dispose();
  }
}
