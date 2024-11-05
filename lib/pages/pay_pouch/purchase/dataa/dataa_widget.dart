import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/purchase_utility_widget.dart';
import '/components/utility_card_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'dataa_model.dart';
export 'dataa_model.dart';

class DataaWidget extends StatefulWidget {
  const DataaWidget({super.key});

  @override
  State<DataaWidget> createState() => _DataaWidgetState();
}

class _DataaWidgetState extends State<DataaWidget>
    with TickerProviderStateMixin {
  late DataaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiAuth = await GetUserCall.call(
        jwt: currentAuthenticationToken,
      );

      if ((_model.apiAuth?.succeeded ?? true)) {
        return;
      }

      GoRouter.of(context).prepareAuthEvent();
      await authManager.signOut();
      GoRouter.of(context).clearRedirectLocation();

      context.goNamedAuth('Login', context.mounted);

      return;

      context.goNamedAuth('Login', context.mounted);
    });

    _model.monthController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.dayController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
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
                        'PURCHASE  DATA',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 20.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController ??=
                            FormFieldController<String>(
                          _model.dropDownValue ??= 'Month',
                        ),
                        options: const ['Month', 'Day', 'Weekly'],
                        onChanged: (val) =>
                            safeSetState(() => _model.dropDownValue = val),
                        width: double.infinity,
                        height: 56.0,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        hintText: 'Please select...',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isOverButton: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                    if (_model.dropDownValue == 'Month')
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
                                      FlutterFlowTheme.of(context).alternate,
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
                                  ],
                                  controller: _model.monthController,
                                  onTap: (i) async {
                                    [
                                      () async {},
                                      () async {},
                                      () async {}
                                    ][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.monthController,
                                  children: [
                                    ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Text(
                                          '30 days',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                fontSize: 10.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '132',
                                                          network: 'Vodacom',
                                                          name: '75MB-R13',
                                                          description:
                                                              '75MB-R13',
                                                          typeCode: 'X',
                                                          minAmount: '13.0000',
                                                          maxAmount: '13.0000',
                                                          amount: '13',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '75MB-R13',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '630',
                                                          network: 'Vodacom',
                                                          name: '240MB-R32',
                                                          description:
                                                              '240MB-R32',
                                                          typeCode: 'X',
                                                          minAmount: '32.0000',
                                                          maxAmount: '32.0000',
                                                          amount: '32',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '240MB-R32',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '631',
                                                          network: 'Vodacom',
                                                          name: '400MB-R53',
                                                          description:
                                                              '400MB-R53',
                                                          typeCode: 'X',
                                                          minAmount: '53.0000',
                                                          maxAmount: '53.0000',
                                                          amount: '53',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '400MB-R53',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '632',
                                                          network: 'Vodacom',
                                                          name: '600MB-R74',
                                                          description:
                                                              '600MB-R74',
                                                          typeCode: 'X',
                                                          minAmount: '74.0000',
                                                          maxAmount: '74.0000',
                                                          amount: '74',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '600MB-R74',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '633',
                                                          network: 'Vodacom',
                                                          name: '1.2GB-R89',
                                                          description:
                                                              '1.2GB-R89',
                                                          typeCode: 'X',
                                                          minAmount: '89.0000',
                                                          maxAmount: '89.0000',
                                                          amount: '89',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel5,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '1.2GB-R89',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '1137',
                                                          network: 'Vodacom',
                                                          name: '1.5GB-R99',
                                                          description:
                                                              '1.5GB-R99',
                                                          typeCode: 'X',
                                                          minAmount: '99.0000',
                                                          maxAmount: '99.0000',
                                                          amount: '99',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel6,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '1.5GB-R99',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '771',
                                                          network: 'Vodacom',
                                                          name: '2.5GB-R155',
                                                          description:
                                                              '2.5GB-R155',
                                                          typeCode: 'X',
                                                          minAmount: '155.0000',
                                                          maxAmount: '155.0000',
                                                          amount: '155',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel7,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '2.5GB-R155',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '769',
                                                          network: 'Vodacom',
                                                          name: '4.5GB-R259',
                                                          description:
                                                              '4.5GB-R259',
                                                          typeCode: 'X',
                                                          minAmount: '259.0000',
                                                          maxAmount: '259.0000',
                                                          amount: '259',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel8,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '4.5GB-R259',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '772',
                                                          network: 'Vodacom',
                                                          name: '7GB-R365',
                                                          description:
                                                              '7GB-R365',
                                                          typeCode: 'X',
                                                          minAmount: '365.0000',
                                                          maxAmount: '365.0000',
                                                          amount: '365',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel9,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '7GB-R365',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '141',
                                                          network: 'Vodacom',
                                                          name: '12GB-R499',
                                                          description:
                                                              '12GB-R499',
                                                          typeCode: 'X',
                                                          minAmount: '499.0000',
                                                          maxAmount: '499.0000',
                                                          amount: '499',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel10,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '12GB-R499',
                                              ),
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
                                        Text(
                                          '30 days',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                fontSize: 10.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '536',
                                                          network: 'MTN',
                                                          name: '5MB-R4',
                                                          description: '5MB-R4',
                                                          typeCode: 'D',
                                                          minAmount: '4.0000',
                                                          maxAmount: '4.0000',
                                                          amount: '4',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel11,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '5MB-R4',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '464',
                                                          network: 'MTN',
                                                          name: '40MB-R10',
                                                          description:
                                                              '40MB-R10',
                                                          typeCode: 'D',
                                                          minAmount: '10.0000',
                                                          maxAmount: '10.0000',
                                                          amount: '10',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel12,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '40MB-R10',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '1098',
                                                          network: 'MTN',
                                                          name: '120MB-R20',
                                                          description:
                                                              '120MB-R20',
                                                          typeCode: 'D',
                                                          minAmount: '20.0000',
                                                          maxAmount: '20.0000',
                                                          amount: '20',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel13,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '120MB-R20',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '720',
                                                          network: 'MTN',
                                                          name: '200MB-R29',
                                                          description:
                                                              '200MB-R29',
                                                          typeCode: 'D',
                                                          minAmount: '29.0000',
                                                          maxAmount: '29.0000',
                                                          amount: '29',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel14,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '200MB-R29',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '721',
                                                          network: 'MTN',
                                                          name: '350MB-R49',
                                                          description:
                                                              '350MB-R49',
                                                          typeCode: 'D',
                                                          minAmount: '49.0000',
                                                          maxAmount: '49.0000',
                                                          amount: '49',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel15,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '350MB-R49',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '1099',
                                                          network: 'MTN',
                                                          name: '500MB-R65',
                                                          description:
                                                              '500MB-R65',
                                                          typeCode: 'D',
                                                          minAmount: '65.0000',
                                                          maxAmount: '65.0000',
                                                          amount: '65',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel16,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '500MB-R65',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '1100',
                                                          network: 'MTN',
                                                          name: '1GB-R79',
                                                          description:
                                                              '1GB-R79',
                                                          typeCode: 'D',
                                                          minAmount: '79.0000',
                                                          maxAmount: '79.0000',
                                                          amount: '79',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel17,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '1GB-R79',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '724',
                                                          network: 'MTN',
                                                          name: '1.5GB-R99',
                                                          description:
                                                              '1.5GB-R99',
                                                          typeCode: 'D',
                                                          minAmount: '99.0000',
                                                          maxAmount: '99.0000',
                                                          amount: '99',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel18,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '1.5GB-R99',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '732',
                                                          network: 'MTN',
                                                          name: '2+2GB-R149',
                                                          description:
                                                              '2+2GB-R149',
                                                          typeCode: 'D',
                                                          minAmount: '149.0000',
                                                          maxAmount: '149.0000',
                                                          amount: '149',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel19,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '2+2GB-R149',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '725',
                                                          network: 'MTN',
                                                          name: '3+3GB-R199',
                                                          description:
                                                              '3+3GB-R199',
                                                          typeCode: 'D',
                                                          minAmount: '199.0000',
                                                          maxAmount: '199.0000',
                                                          amount: '199',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel20,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '3+3GB-R199',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '726',
                                                          network: 'MTN',
                                                          name: '5+5GB-R299',
                                                          description:
                                                              '5+5GB-R299',
                                                          typeCode: 'D',
                                                          minAmount: '299.0000',
                                                          maxAmount: '299.0000',
                                                          amount: '299',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel21,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '5+5GB-R299',
                                              ),
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
                                        Text(
                                          '30 days',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                fontSize: 10.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '959',
                                                          network: 'Cell C',
                                                          name: '1000MB-R50',
                                                          description:
                                                              '1000MB-R50',
                                                          typeCode: 'AO',
                                                          minAmount: '50.0000',
                                                          maxAmount: '50.0000',
                                                          amount: '50',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel22,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '1000MB-R50',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '960',
                                                          network: 'Cell C',
                                                          name: '2GB-R99',
                                                          description:
                                                              '2GB-R99',
                                                          typeCode: 'AO',
                                                          minAmount: '99.0000',
                                                          maxAmount: '99.0000',
                                                          amount: '99',
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel23,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const UtilityCardWidget(
                                                name: '2GB-R99',
                                              ),
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
                    if (_model.dropDownValue == 'Day')
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
                                      FlutterFlowTheme.of(context).alternate,
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
                                  controller: _model.dayController,
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
                                  controller: _model.dayController,
                                  children: [
                                    ListView(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
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
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel24,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel25,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel26,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel27,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel28,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel29,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel30,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            const PurchaseUtilityWidget(
                                                          id: '121',
                                                          network: 'MTN',
                                                          name:
                                                              'MTN R2 voucher',
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
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel31,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel32,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel33,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel34,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel35,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel36,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          const PurchaseUtilityWidget(
                                                        id: '934',
                                                        network: 'MTN',
                                                        name:
                                                            'MTN R100 voucher',
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
                                            model: _model.utilityCardModel37,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          const PurchaseUtilityWidget(
                                                        id: '29',
                                                        network: 'MTN',
                                                        name:
                                                            'MTN R180 voucher',
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
                                            model: _model.utilityCardModel38,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
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
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel39,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel40,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel41,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel42,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel43,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel44,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          const PurchaseUtilityWidget(
                                                        id: '117',
                                                        network: 'Cell C',
                                                        name:
                                                            'CellC R50 voucher',
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
                                            model: _model.utilityCardModel45,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel46,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel47,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
                                                      onTap: () =>
                                                          FocusScope.of(context)
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
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: wrapWithModel(
                                              model: _model.utilityCardModel48,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel49,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel50,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel51,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return WebViewAware(
                                                  child: GestureDetector(
                                                    onTap: () =>
                                                        FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
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
                                            model: _model.utilityCardModel52,
                                            updateCallback: () =>
                                                safeSetState(() {}),
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
