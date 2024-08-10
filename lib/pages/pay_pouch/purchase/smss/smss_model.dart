import '/backend/api_requests/api_calls.dart';
import '/components/utility_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'smss_widget.dart' show SmssWidget;
import 'package:flutter/material.dart';

class SmssModel extends FlutterFlowModel<SmssWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Get User)] action in SMSS widget.
  ApiCallResponse? apiAuth;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Month widget.
  TabController? monthController;
  int get monthCurrentIndex =>
      monthController != null ? monthController!.index : 0;

  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel1;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel2;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel3;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel4;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel5;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel6;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel7;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel8;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel9;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel10;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel11;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel12;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel13;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel14;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel15;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel16;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel17;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel18;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel19;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel20;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel21;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel22;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel23;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel24;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel25;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel26;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel27;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel28;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel29;
  // State field(s) for Day widget.
  TabController? dayController;
  int get dayCurrentIndex => dayController != null ? dayController!.index : 0;

  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel30;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel31;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel32;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel33;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel34;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel35;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel36;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel37;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel38;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel39;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel40;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel41;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel42;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel43;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel44;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel45;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel46;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel47;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel48;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel49;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel50;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel51;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel52;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel53;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel54;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel55;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel56;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel57;
  // Model for utilityCard component.
  late UtilityCardModel utilityCardModel58;

  @override
  void initState(BuildContext context) {
    utilityCardModel1 = createModel(context, () => UtilityCardModel());
    utilityCardModel2 = createModel(context, () => UtilityCardModel());
    utilityCardModel3 = createModel(context, () => UtilityCardModel());
    utilityCardModel4 = createModel(context, () => UtilityCardModel());
    utilityCardModel5 = createModel(context, () => UtilityCardModel());
    utilityCardModel6 = createModel(context, () => UtilityCardModel());
    utilityCardModel7 = createModel(context, () => UtilityCardModel());
    utilityCardModel8 = createModel(context, () => UtilityCardModel());
    utilityCardModel9 = createModel(context, () => UtilityCardModel());
    utilityCardModel10 = createModel(context, () => UtilityCardModel());
    utilityCardModel11 = createModel(context, () => UtilityCardModel());
    utilityCardModel12 = createModel(context, () => UtilityCardModel());
    utilityCardModel13 = createModel(context, () => UtilityCardModel());
    utilityCardModel14 = createModel(context, () => UtilityCardModel());
    utilityCardModel15 = createModel(context, () => UtilityCardModel());
    utilityCardModel16 = createModel(context, () => UtilityCardModel());
    utilityCardModel17 = createModel(context, () => UtilityCardModel());
    utilityCardModel18 = createModel(context, () => UtilityCardModel());
    utilityCardModel19 = createModel(context, () => UtilityCardModel());
    utilityCardModel20 = createModel(context, () => UtilityCardModel());
    utilityCardModel21 = createModel(context, () => UtilityCardModel());
    utilityCardModel22 = createModel(context, () => UtilityCardModel());
    utilityCardModel23 = createModel(context, () => UtilityCardModel());
    utilityCardModel24 = createModel(context, () => UtilityCardModel());
    utilityCardModel25 = createModel(context, () => UtilityCardModel());
    utilityCardModel26 = createModel(context, () => UtilityCardModel());
    utilityCardModel27 = createModel(context, () => UtilityCardModel());
    utilityCardModel28 = createModel(context, () => UtilityCardModel());
    utilityCardModel29 = createModel(context, () => UtilityCardModel());
    utilityCardModel30 = createModel(context, () => UtilityCardModel());
    utilityCardModel31 = createModel(context, () => UtilityCardModel());
    utilityCardModel32 = createModel(context, () => UtilityCardModel());
    utilityCardModel33 = createModel(context, () => UtilityCardModel());
    utilityCardModel34 = createModel(context, () => UtilityCardModel());
    utilityCardModel35 = createModel(context, () => UtilityCardModel());
    utilityCardModel36 = createModel(context, () => UtilityCardModel());
    utilityCardModel37 = createModel(context, () => UtilityCardModel());
    utilityCardModel38 = createModel(context, () => UtilityCardModel());
    utilityCardModel39 = createModel(context, () => UtilityCardModel());
    utilityCardModel40 = createModel(context, () => UtilityCardModel());
    utilityCardModel41 = createModel(context, () => UtilityCardModel());
    utilityCardModel42 = createModel(context, () => UtilityCardModel());
    utilityCardModel43 = createModel(context, () => UtilityCardModel());
    utilityCardModel44 = createModel(context, () => UtilityCardModel());
    utilityCardModel45 = createModel(context, () => UtilityCardModel());
    utilityCardModel46 = createModel(context, () => UtilityCardModel());
    utilityCardModel47 = createModel(context, () => UtilityCardModel());
    utilityCardModel48 = createModel(context, () => UtilityCardModel());
    utilityCardModel49 = createModel(context, () => UtilityCardModel());
    utilityCardModel50 = createModel(context, () => UtilityCardModel());
    utilityCardModel51 = createModel(context, () => UtilityCardModel());
    utilityCardModel52 = createModel(context, () => UtilityCardModel());
    utilityCardModel53 = createModel(context, () => UtilityCardModel());
    utilityCardModel54 = createModel(context, () => UtilityCardModel());
    utilityCardModel55 = createModel(context, () => UtilityCardModel());
    utilityCardModel56 = createModel(context, () => UtilityCardModel());
    utilityCardModel57 = createModel(context, () => UtilityCardModel());
    utilityCardModel58 = createModel(context, () => UtilityCardModel());
  }

  @override
  void dispose() {
    monthController?.dispose();
    utilityCardModel1.dispose();
    utilityCardModel2.dispose();
    utilityCardModel3.dispose();
    utilityCardModel4.dispose();
    utilityCardModel5.dispose();
    utilityCardModel6.dispose();
    utilityCardModel7.dispose();
    utilityCardModel8.dispose();
    utilityCardModel9.dispose();
    utilityCardModel10.dispose();
    utilityCardModel11.dispose();
    utilityCardModel12.dispose();
    utilityCardModel13.dispose();
    utilityCardModel14.dispose();
    utilityCardModel15.dispose();
    utilityCardModel16.dispose();
    utilityCardModel17.dispose();
    utilityCardModel18.dispose();
    utilityCardModel19.dispose();
    utilityCardModel20.dispose();
    utilityCardModel21.dispose();
    utilityCardModel22.dispose();
    utilityCardModel23.dispose();
    utilityCardModel24.dispose();
    utilityCardModel25.dispose();
    utilityCardModel26.dispose();
    utilityCardModel27.dispose();
    utilityCardModel28.dispose();
    utilityCardModel29.dispose();
    dayController?.dispose();
    utilityCardModel30.dispose();
    utilityCardModel31.dispose();
    utilityCardModel32.dispose();
    utilityCardModel33.dispose();
    utilityCardModel34.dispose();
    utilityCardModel35.dispose();
    utilityCardModel36.dispose();
    utilityCardModel37.dispose();
    utilityCardModel38.dispose();
    utilityCardModel39.dispose();
    utilityCardModel40.dispose();
    utilityCardModel41.dispose();
    utilityCardModel42.dispose();
    utilityCardModel43.dispose();
    utilityCardModel44.dispose();
    utilityCardModel45.dispose();
    utilityCardModel46.dispose();
    utilityCardModel47.dispose();
    utilityCardModel48.dispose();
    utilityCardModel49.dispose();
    utilityCardModel50.dispose();
    utilityCardModel51.dispose();
    utilityCardModel52.dispose();
    utilityCardModel53.dispose();
    utilityCardModel54.dispose();
    utilityCardModel55.dispose();
    utilityCardModel56.dispose();
    utilityCardModel57.dispose();
    utilityCardModel58.dispose();
  }
}
