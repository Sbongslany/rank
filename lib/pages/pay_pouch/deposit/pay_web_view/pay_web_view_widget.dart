import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'pay_web_view_model.dart';
export 'pay_web_view_model.dart';

class PayWebViewWidget extends StatefulWidget {
  const PayWebViewWidget({
    super.key,
    required this.urlLink,
  });

  final String? urlLink;

  @override
  State<PayWebViewWidget> createState() => _PayWebViewWidgetState();
}

class _PayWebViewWidgetState extends State<PayWebViewWidget> {
  late PayWebViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayWebViewModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Pay',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: FlutterFlowWebView(
          content: widget.urlLink!,
          bypass: true,
          height: 850.0,
          verticalScroll: false,
          horizontalScroll: false,
        ),
      ),
    );
  }
}