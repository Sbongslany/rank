import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/back_button_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'request_loan_model.dart';
export 'request_loan_model.dart';

class RequestLoanWidget extends StatefulWidget {
  const RequestLoanWidget({super.key});

  @override
  State<RequestLoanWidget> createState() => _RequestLoanWidgetState();
}

class _RequestLoanWidgetState extends State<RequestLoanWidget> {
  late RequestLoanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RequestLoanModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).primaryBackground,
                FlutterFlowTheme.of(context).secondary
              ],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(0.0, -1.0),
              end: const AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.bounceOut,
                width: double.infinity,
                height: 102.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).secondary,
                      FlutterFlowTheme.of(context).primary
                    ],
                    stops: const [0.0, 1.0],
                    begin: const AlignmentDirectional(0.24, -1.0),
                    end: const AlignmentDirectional(-0.24, 1.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.backButtonModel,
                      updateCallback: () => setState(() {}),
                      child: const BackButtonWidget(),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/ranklogo.png',
                            width: 70.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 110.0)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 161.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 70.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).secondary,
                        FlutterFlowTheme.of(context).primary
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(1.0, 0.34),
                      end: const AlignmentDirectional(-1.0, -0.34),
                    ),
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'FIND YOUR LOAN',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 20.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 0.0, 5.0),
                  child: Text(
                    'HOW MUCH DO  YOU NEED',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 12.0,
                        ),
                  ),
                ),
              ),
              FlutterFlowDropDown<String>(
                controller: _model.amountValueController ??=
                    FormFieldController<String>(null),
                options: const [
                  '500',
                  '1000',
                  '1500',
                  '2000',
                  '2500',
                  '3000',
                  '5000'
                ],
                onChanged: (val) => setState(() => _model.amountValue = val),
                width: 350.0,
                height: 50.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                hintText: 'Please select...',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 0.0, 5.0),
                  child: Text(
                    'TIME PERIOD TO REPAY LOAN',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 12.0,
                        ),
                  ),
                ),
              ),
              FlutterFlowDropDown<String>(
                controller: _model.daysValueController ??=
                    FormFieldController<String>(null),
                options: const ['30', '60', '90'],
                onChanged: (val) => setState(() => _model.daysValue = val),
                width: 350.0,
                height: 50.0,
                textStyle: FlutterFlowTheme.of(context).bodyMedium,
                hintText: 'Please select...',
                icon: Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 2.0,
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderWidth: 2.0,
                borderRadius: 8.0,
                margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                hidesUnderline: true,
                isOverButton: true,
                isSearchable: false,
                isMultiSelect: false,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 50.0, 20.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    var shouldSetState = false;
                    _model.apiResultmsa = await LoanDirectoryCall.call(
                      jwt: currentAuthenticationToken,
                      amount: _model.amountValue,
                      days: _model.daysValue,
                    );
                    shouldSetState = true;
                    if ((_model.apiResultmsa?.succeeded ?? true)) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            LoanDirectoryCall.meesage(
                              (_model.apiResultmsa?.jsonBody ?? ''),
                            )!,
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          duration: const Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondary,
                        ),
                      );

                      context.pushNamed('LoanConfonfirmation');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            LoanDirectoryCall.meesage(
                              (_model.apiResultmsa?.jsonBody ?? ''),
                            )!,
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          duration: const Duration(milliseconds: 4000),
                          backgroundColor: FlutterFlowTheme.of(context).error,
                        ),
                      );
                      if (shouldSetState) setState(() {});
                      return;
                    }

                    if (shouldSetState) setState(() {});
                  },
                  text: 'SUBMIT',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF116EAF),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
