import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'payfastwebview_model.dart';
export 'payfastwebview_model.dart';

class PayfastwebviewWidget extends StatefulWidget {
  const PayfastwebviewWidget({
    super.key,
    required this.urlLink,
  });

  final String? urlLink;

  @override
  State<PayfastwebviewWidget> createState() => _PayfastwebviewWidgetState();
}

class _PayfastwebviewWidgetState extends State<PayfastwebviewWidget> {
  late PayfastwebviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PayfastwebviewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
