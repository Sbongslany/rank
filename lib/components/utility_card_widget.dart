import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'utility_card_model.dart';
export 'utility_card_model.dart';

class UtilityCardWidget extends StatefulWidget {
  const UtilityCardWidget({
    super.key,
    required this.id,
    required this.network,
    required this.name,
    required this.description,
    required this.typeCode,
    required this.minAmount,
    required this.maxAmount,
    required this.amount,
  });

  final String? id;
  final String? network;
  final String? name;
  final String? description;
  final String? typeCode;
  final String? minAmount;
  final String? maxAmount;
  final String? amount;

  @override
  State<UtilityCardWidget> createState() => _UtilityCardWidgetState();
}

class _UtilityCardWidgetState extends State<UtilityCardWidget> {
  late UtilityCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UtilityCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
      child: Material(
        color: Colors.transparent,
        elevation: 2.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeIn,
          width: 100.0,
          height: 60.0,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).primary,
                FlutterFlowTheme.of(context).secondary
              ],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(0.0, -1.0),
              end: const AlignmentDirectional(0, 1.0),
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(0.0),
            ),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
              width: 5.0,
            ),
          ),
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: AutoSizeText(
            'R20 Voucher',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Rubik',
                  color: FlutterFlowTheme.of(context).alternate,
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
