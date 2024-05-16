import '/components/purchase_utility_widget.dart';
import '/components/utility_card_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'smss_model.dart';
export 'smss_model.dart';

class SmssWidget extends StatefulWidget {
  const SmssWidget({super.key});

  @override
  State<SmssWidget> createState() => _SmssWidgetState();
}

class _SmssWidgetState extends State<SmssWidget> with TickerProviderStateMixin {
  late SmssModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmssModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 100.0,
              pinned: false,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              actions: const [],
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).primary,
                        FlutterFlowTheme.of(context).secondary
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(0.0, -1.0),
                      end: const AlignmentDirectional(0, 1.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Container(
                            height: 40.0,
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
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(0.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_sharp,
                                color: FlutterFlowTheme.of(context).alternate,
                                size: 34.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/ranklogo_2.png',
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Opacity(
                        opacity: 0.0,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Container(
                              height: 40.0,
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
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: Icon(
                                  Icons.arrow_back_ios_sharp,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 34.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                centerTitle: false,
                expandedTitleScale: 1.0,
              ),
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).primary,
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
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                      child: Text(
                        'PURCHASE  SMS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: const Alignment(0.0, 0),
                              child: FlutterFlowButtonTabBar(
                                useToggleButtonStyle: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                unselectedLabelStyle: const TextStyle(),
                                labelColor:
                                    FlutterFlowTheme.of(context).alternate,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondary,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                                unselectedBackgroundColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderColor:
                                    FlutterFlowTheme.of(context).secondary,
                                unselectedBorderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 2.0,
                                borderRadius: 8.0,
                                elevation: 0.0,
                                buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                padding: const EdgeInsets.all(4.0),
                                tabs: const [
                                  Tab(
                                    text: 'Vodacom',
                                  ),
                                  Tab(
                                    text: 'MTN',
                                  ),
                                  Tab(
                                    text: 'CELL C',
                                  ),
                                  Tab(
                                    text: 'Telkom',
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [
                                    () async {},
                                    () async {},
                                    () async {},
                                    () async {}
                                  ][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          const PurchaseUtilityWidget(
                                                        id: '65',
                                                        network: 'Vodacom',
                                                        name:
                                                            'Vodacom R2 voucher',
                                                        description:
                                                            'Vodacom R2 voucher',
                                                        typeCode: 'V',
                                                        minAmount: '2.0000',
                                                        maxAmount: '2.0000',
                                                        amount: '2',
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: wrapWithModel(
                                            model: _model.utilityCardModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const UtilityCardWidget(
                                              name: 'Vodacom R2 voucher',
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '66',
                                                      network: 'Vodacom',
                                                      name:
                                                          'Vodacom R5 voucher',
                                                      description:
                                                          'Vodacom R5 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '5.0000',
                                                      maxAmount: '5.0000',
                                                      amount: '5',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel2,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Vodacom R5 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '67',
                                                      network: 'Vodacom',
                                                      name:
                                                          'Vodacom R10 voucher',
                                                      description:
                                                          'Vodacom R10 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '10.0000',
                                                      maxAmount: '10.0000',
                                                      amount: '10',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel3,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Vodacom R10 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '68',
                                                      network: 'Vodacom',
                                                      name:
                                                          'Vodacom R12 voucher',
                                                      description:
                                                          'Vodacom R12 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '12.0000',
                                                      maxAmount: '12.0000',
                                                      amount: '12',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel4,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Vodacom R12 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '69',
                                                      network: 'Vodacom',
                                                      name:
                                                          'Vodacom R29 voucher',
                                                      description:
                                                          'Vodacom R29 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '29.0000',
                                                      maxAmount: '29.0000',
                                                      amount: '29',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel5,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Vodacom R29 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '71',
                                                      network: 'Vodacom',
                                                      name:
                                                          'Vodacom R55 voucher',
                                                      description:
                                                          'Vodacom R55 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '55.0000',
                                                      maxAmount: '55.0000',
                                                      amount: '55',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel6,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Vodacom R55 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '72',
                                                      network: 'Vodacom',
                                                      name:
                                                          'Vodacom R110 voucher',
                                                      description:
                                                          'Vodacom R110 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '110.0000',
                                                      maxAmount: '110.0000',
                                                      amount: '110',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel7,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Vodacom R110 voucher',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          const PurchaseUtilityWidget(
                                                        id: '121',
                                                        network: 'MTN',
                                                        name: 'MTN R2 voucher',
                                                        description:
                                                            'MTN R2 voucher',
                                                        typeCode: 'V',
                                                        minAmount: '2.0000',
                                                        maxAmount: '2.0000',
                                                        amount: '2',
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: wrapWithModel(
                                            model: _model.utilityCardModel8,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const UtilityCardWidget(
                                              name: 'MTN R2 voucher',
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '120',
                                                      network: 'MTN',
                                                      name: 'MTN R5 voucher',
                                                      description:
                                                          'MTN R5 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '5.0000',
                                                      maxAmount: '5.0000',
                                                      amount: '5',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel9,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'MTN R5 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '25',
                                                      network: 'MTN',
                                                      name: 'MTN R10 voucher',
                                                      description:
                                                          'MTN R10 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '10.0000',
                                                      maxAmount: '10.0000',
                                                      amount: '10',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel10,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'MTN R10 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '26',
                                                      network: 'MTN',
                                                      name: 'MTN R15 voucher',
                                                      description:
                                                          'MTN R15 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '15.0000',
                                                      maxAmount: '15.0000',
                                                      amount: '15',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel11,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'MTN R15 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '27',
                                                      network: 'MTN',
                                                      name: 'MTN R30 voucher',
                                                      description:
                                                          'MTN R30 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '30.0000',
                                                      maxAmount: '30.0000',
                                                      amount: '30',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel12,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'MTN R30 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '28',
                                                      network: 'MTN',
                                                      name: 'MTN R60 voucher',
                                                      description:
                                                          'MTN R60 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '60.0000',
                                                      maxAmount: '60.0000',
                                                      amount: '60',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel13,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'MTN R60 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '934',
                                                      network: 'MTN',
                                                      name: 'MTN R100 voucher',
                                                      description:
                                                          'MTN R100 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '100.0000',
                                                      maxAmount: '100.0000',
                                                      amount: '100',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel14,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'MTN R100 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '29',
                                                      network: 'MTN',
                                                      name: 'MTN R180 voucher',
                                                      description:
                                                          'MTN R180 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '180.0000',
                                                      maxAmount: '180.0000',
                                                      amount: '180',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel15,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'MTN R180 voucher',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          const PurchaseUtilityWidget(
                                                        id: '30',
                                                        network: 'Cell C',
                                                        name:
                                                            'Cell C R5 voucher',
                                                        description:
                                                            'Cell C R5 voucher',
                                                        typeCode: 'V',
                                                        minAmount: '5.0000',
                                                        maxAmount: '5.0000',
                                                        amount: '5',
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: wrapWithModel(
                                            model: _model.utilityCardModel16,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const UtilityCardWidget(
                                              name: 'Cell C R5 voucher',
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '36',
                                                      network: 'Cell C',
                                                      name:
                                                          'Cell C R10 voucher',
                                                      description:
                                                          'Cell C R10 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '10.0000',
                                                      maxAmount: '10.0000',
                                                      amount: '10',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel17,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Cell C R10 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '928',
                                                      network: 'Cell C',
                                                      name:
                                                          'Cell C R20 SupaCharge Voucher',
                                                      description:
                                                          'Cell C R20 SupaCharge Voucher',
                                                      typeCode: 'V',
                                                      minAmount: '20.0000',
                                                      maxAmount: '20.0000',
                                                      amount: '20',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel18,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name:
                                                'Cell C R20 SupaCharge Voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '31',
                                                      network: 'Cell C',
                                                      name:
                                                          'Cell C R25 voucher',
                                                      description:
                                                          'Cell C R25 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '25.0000',
                                                      maxAmount: '25.0000',
                                                      amount: '25',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel19,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Cell C R25 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '929',
                                                      network: 'Cell C',
                                                      name:
                                                          'Cell C R30 SupaCharge Voucher',
                                                      description:
                                                          'Cell C R30 SupaCharge Voucher',
                                                      typeCode: 'V',
                                                      minAmount: '30.0000',
                                                      maxAmount: '30.0000',
                                                      amount: '30',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel20,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name:
                                                'Cell C R30 SupaCharge Voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '32',
                                                      network: 'Cell C',
                                                      name:
                                                          'Cell C R35 voucher',
                                                      description:
                                                          'Cell C R35 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '35.0000',
                                                      maxAmount: '35.0000',
                                                      amount: '35',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel21,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Cell C R35 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '117',
                                                      network: 'Cell C',
                                                      name: 'CellC R50 voucher',
                                                      description:
                                                          'CellC R50 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '50.0000',
                                                      maxAmount: '50.0000',
                                                      amount: '50',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel22,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'CellC R50 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '33',
                                                      network: 'Cell C',
                                                      name:
                                                          'Cell C R70 voucher',
                                                      description:
                                                          'Cell C R70 voucher',
                                                      typeCode: 'V',
                                                      minAmount: '70.0000',
                                                      maxAmount: '70.0000',
                                                      amount: '70',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel23,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Cell C R70 voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '926',
                                                      network: 'Cell C',
                                                      name:
                                                          'Cell C R100 Voucher',
                                                      description:
                                                          'Cell C R100 Voucher',
                                                      typeCode: 'V',
                                                      minAmount: '100.0000',
                                                      maxAmount: '100.0000',
                                                      amount: '100',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel24,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Cell C R100 Voucher',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          const PurchaseUtilityWidget(
                                                        id: '156',
                                                        network: 'Telkom',
                                                        name:
                                                            'Tkm Mobile R5 Voucher',
                                                        description:
                                                            'Tkm Mobile R5 Voucher',
                                                        typeCode: 'V',
                                                        minAmount: '5.0000',
                                                        maxAmount: '5.0000',
                                                        amount: '5',
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: wrapWithModel(
                                            model: _model.utilityCardModel25,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: const UtilityCardWidget(
                                              name: 'Tkm Mobile R5 Voucher',
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '158',
                                                      network: 'Telkom',
                                                      name:
                                                          'Tkm Mobile R20 Voucher',
                                                      description:
                                                          'Tkm Mobile R20 Voucher',
                                                      typeCode: 'V',
                                                      minAmount: '20.0000',
                                                      maxAmount: '20.0000',
                                                      amount: '20',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel26,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Tkm Mobile R10 Voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '159',
                                                      network: 'Telkom',
                                                      name:
                                                          'Tkm Mobile R30 Voucher',
                                                      description:
                                                          'Tkm Mobile R30 Voucher',
                                                      typeCode: 'V',
                                                      minAmount: '30.0000',
                                                      maxAmount: '30.0000',
                                                      amount: '30',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel27,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Tkm Mobile R30 Voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '160',
                                                      network: 'Telkom',
                                                      name:
                                                          'Tkm Mobile R50 Voucher',
                                                      description:
                                                          'Tkm Mobile R50 Voucher',
                                                      typeCode: 'V',
                                                      minAmount: '50.0000',
                                                      maxAmount: '50.0000',
                                                      amount: '50',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel28,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Tkm Mobile R50 Voucher',
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return WebViewAware(
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child:
                                                        const PurchaseUtilityWidget(
                                                      id: '161',
                                                      network: 'Telkom',
                                                      name:
                                                          'Tkm Mobile R100 Voucher',
                                                      description:
                                                          'Tkm Mobile R100 Voucher',
                                                      typeCode: 'V',
                                                      minAmount: '100.0000',
                                                      maxAmount: '100.0000',
                                                      amount: '100',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: wrapWithModel(
                                          model: _model.utilityCardModel29,
                                          updateCallback: () => setState(() {}),
                                          child: const UtilityCardWidget(
                                            name: 'Tkm Mobile R100 Voucher',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
