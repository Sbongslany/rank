import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invite_widget.dart' show InviteWidget;
import 'package:flutter/material.dart';

class InviteModel extends FlutterFlowModel<InviteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get User)] action in Invite widget.
  ApiCallResponse? apiAuth;
  // Stores action output result for [Backend Call - API (Invite friend)] action in Container widget.
  ApiCallResponse? inviteFriendResoonse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
