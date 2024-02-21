import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'notification_model.dart';
export 'notification_model.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  late NotificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('ConfirmDeposit');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Profile');
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwZXJzb258ZW58MHx8fHwxNzA4MTE0NzA4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 0.0),
                              child: RatingBar.builder(
                                onRatingUpdate: (newValue) => setState(
                                    () => _model.ratingBarValue1 = newValue),
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                                direction: Axis.horizontal,
                                initialRating: _model.ratingBarValue1 ??= 3.0,
                                unratedColor:
                                    FlutterFlowTheme.of(context).accent3,
                                itemCount: 5,
                                itemSize: 10.0,
                                glowColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'JOHN DOE',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Text(
                                'MANAGER AT ONECALL24',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                              ),
                            ),
                            Text(
                              '5 min read',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent3,
                                    fontSize: 10.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 5.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: const CircleBorder(),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF30A14),
                              shape: BoxShape.circle,
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.of(context).alternate,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 5.0, 0.0),
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
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.add_task_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('PaySomeone');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Profile');
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwZXJzb258ZW58MHx8fHwxNzA4MTE0NzA4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 0.0),
                              child: RatingBar.builder(
                                onRatingUpdate: (newValue) => setState(
                                    () => _model.ratingBarValue2 = newValue),
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                                direction: Axis.horizontal,
                                initialRating: _model.ratingBarValue2 ??= 3.0,
                                unratedColor:
                                    FlutterFlowTheme.of(context).accent3,
                                itemCount: 5,
                                itemSize: 10.0,
                                glowColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'JOHN DOE',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Text(
                                'MANAGER AT ONECALL24',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                              ),
                            ),
                            Text(
                              '5 min read',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent3,
                                    fontSize: 10.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 5.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: const CircleBorder(),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF30A14),
                              shape: BoxShape.circle,
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.close_sharp,
                              color: FlutterFlowTheme.of(context).alternate,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 5.0, 0.0),
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
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.add_task_sharp,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('PaySomeone');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Profile');
                                },
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwZXJzb258ZW58MHx8fHwxNzA4MTE0NzA4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 0.0),
                              child: RatingBar.builder(
                                onRatingUpdate: (newValue) => setState(
                                    () => _model.ratingBarValue3 = newValue),
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                                direction: Axis.horizontal,
                                initialRating: _model.ratingBarValue3 ??= 3.0,
                                unratedColor:
                                    FlutterFlowTheme.of(context).accent3,
                                itemCount: 5,
                                itemSize: 10.0,
                                glowColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'JOHN DOE',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                            ),
                            Opacity(
                              opacity: 0.0,
                              child: Text(
                                'MANAGER AT ONECALL24',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                    ),
                              ),
                            ),
                            Text(
                              '5 min read',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent3,
                                    fontSize: 10.0,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 5.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5.0,
                          shape: const CircleBorder(),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF30A14),
                              shape: BoxShape.circle,
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.of(context).alternate,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 5.0, 0.0),
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
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.add_task_sharp,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Profile');
                              },
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwZXJzb258ZW58MHx8fHwxNzA4MTE0NzA4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 0.0),
                            child: RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.ratingBarValue4 = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue4 ??= 3.0,
                              unratedColor:
                                  FlutterFlowTheme.of(context).accent3,
                              itemCount: 5,
                              itemSize: 10.0,
                              glowColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'JOHN DOE',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                          ),
                          Opacity(
                            opacity: 0.0,
                            child: Text(
                              'MANAGER AT ONECALL24',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).accent4,
                          ),
                          Text(
                            '5 min read',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).accent3,
                                  fontSize: 10.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 5.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: const CircleBorder(),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF30A14),
                            shape: BoxShape.circle,
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 5.0, 0.0),
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
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.add_task,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Profile');
                              },
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxwZXJzb258ZW58MHx8fHwxNzA4MTE0NzA4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 2.0, 0.0, 0.0),
                            child: RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.ratingBarValue5 = newValue),
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue5 ??= 3.0,
                              unratedColor:
                                  FlutterFlowTheme.of(context).accent3,
                              itemCount: 5,
                              itemSize: 10.0,
                              glowColor: FlutterFlowTheme.of(context).tertiary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 1.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'JOHN DOE',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                          ),
                          Opacity(
                            opacity: 0.0,
                            child: Text(
                              'MANAGER AT ONECALL24',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                            ),
                          ),
                          Text(
                            '5 min read',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).accent3,
                                  fontSize: 10.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 5.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: const CircleBorder(),
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFF000E),
                            shape: BoxShape.circle,
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).alternate,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 5.0, 0.0),
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
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Icon(
                            Icons.add_task,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
