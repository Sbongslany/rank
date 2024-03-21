import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'invite_model.dart';
export 'invite_model.dart';

class InviteWidget extends StatefulWidget {
  const InviteWidget({super.key});

  @override
  State<InviteWidget> createState() => _InviteWidgetState();
}

class _InviteWidgetState extends State<InviteWidget>
    with TickerProviderStateMixin {
  late InviteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InviteModel());

    _model.textController ??= TextEditingController();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 100.0,
              pinned: false,
              floating: true,
              snap: false,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              actions: const [],
              flexibleSpace: FlexibleSpaceBar(
                title: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/images/ranklogo.png',
                      width: 100.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: SizedBox(
                                  width: 320.0,
                                  child: Autocomplete<String>(
                                    initialValue: const TextEditingValue(),
                                    optionsBuilder: (textEditingValue) {
                                      if (textEditingValue.text == '') {
                                        return const Iterable<String>.empty();
                                      }
                                      return [''].where((option) {
                                        final lowercaseOption =
                                            option.toLowerCase();
                                        return lowercaseOption.contains(
                                            textEditingValue.text
                                                .toLowerCase());
                                      });
                                    },
                                    optionsViewBuilder:
                                        (context, onSelected, options) {
                                      return AutocompleteOptionsList(
                                        textFieldKey: _model.textFieldKey,
                                        textController: _model.textController!,
                                        options: options.toList(),
                                        onSelected: onSelected,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        textHighlightStyle: const TextStyle(),
                                        elevation: 4.0,
                                        optionBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        optionHighlightColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        maxHeight: 200.0,
                                      );
                                    },
                                    onSelected: (String selection) {
                                      setState(() => _model
                                          .textFieldSelectedOption = selection);
                                      FocusScope.of(context).unfocus();
                                    },
                                    fieldViewBuilder: (
                                      context,
                                      textEditingController,
                                      focusNode,
                                      onEditingComplete,
                                    ) {
                                      _model.textFieldFocusNode = focusNode;

                                      _model.textController =
                                          textEditingController;
                                      return TextFormField(
                                        key: _model.textFieldKey,
                                        controller: textEditingController,
                                        focusNode: focusNode,
                                        onEditingComplete: onEditingComplete,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController',
                                          const Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Search friend',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          suffixIcon: const Icon(
                                            Icons.search_sharp,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      );
                                    },
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
                                setState(() {
                                  _model.textController?.clear();
                                });
                                setState(() {
                                  FFAppState().searchActive = false;
                                });
                              },
                              child: Icon(
                                Icons.close,
                                color: FlutterFlowTheme.of(context).alternate,
                                size: 34.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RefreshIndicator(
                        onRefresh: () async {
                          setState(
                              () => _model.listViewPagingController?.refresh());
                          await _model.waitForOnePageForListView();
                        },
                        child: PagedListView<ApiPagingParams, dynamic>(
                          pagingController: _model.setListViewController(
                            (nextPageMarker) => GetFriendsToInviteCall.call(
                              jwt: currentAuthenticationToken,
                            ),
                          ),
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          reverse: false,
                          scrollDirection: Axis.vertical,
                          builderDelegate: PagedChildBuilderDelegate<dynamic>(
                            // Customize what your widget looks like when it's loading the first page.
                            firstPageProgressIndicatorBuilder: (_) => Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: SpinKitThreeBounce(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 40.0,
                                ),
                              ),
                            ),
                            // Customize what your widget looks like when it's loading another page.
                            newPageProgressIndicatorBuilder: (_) => Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: SpinKitThreeBounce(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 40.0,
                                ),
                              ),
                            ),

                            itemBuilder: (context, _, getFriendsToInviteIndex) {
                              final getFriendsToInviteItem = _model
                                  .listViewPagingController!
                                  .itemList![getFriendsToInviteIndex];
                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context
                                                          .pushNamed('Profile');
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/imagePlaceholder.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 1.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  getJsonField(
                                                    getFriendsToInviteItem,
                                                    r'''$.data.first_name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                ),
                                                Text(
                                                  getJsonField(
                                                    getFriendsToInviteItem,
                                                    r'''$.data.last_name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 5.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                var shouldSetState = false;
                                                _model.inviteFriendResoonse =
                                                    await InviteFriendCall.call(
                                                  userId: getJsonField(
                                                    getFriendsToInviteItem,
                                                    r'''$.user_id''',
                                                  ).toString(),
                                                  jwt:
                                                      currentAuthenticationToken,
                                                );
                                                shouldSetState = true;
                                                if ((_model.inviteFriendResoonse
                                                        ?.succeeded ??
                                                    true)) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        getJsonField(
                                                          (_model.inviteFriendResoonse
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.message''',
                                                        ).toString(),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: const Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success,
                                                    ),
                                                  );
                                                  if (shouldSetState) {
                                                    setState(() {});
                                                  }
                                                  return;
                                                } else {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        getJsonField(
                                                          (_model.inviteFriendResoonse
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.message''',
                                                        ).toString(),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                        ),
                                                      ),
                                                      duration: const Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                    ),
                                                  );
                                                  if (shouldSetState) {
                                                    setState(() {});
                                                  }
                                                  return;
                                                }

                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5.0,
                                                shape: const CircleBorder(),
                                                child: Container(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0xFF38FF00),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Icon(
                                                    Icons.add_circle,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ),
                                            ).animateOnActionTrigger(
                                              animationsMap[
                                                  'containerOnActionTriggerAnimation']!,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
