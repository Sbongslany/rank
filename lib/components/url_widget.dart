import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'url_model.dart';
export 'url_model.dart';

class UrlWidget extends StatefulWidget {
  const UrlWidget({
    super.key,
    this.webLink,
  });

  final String? webLink;

  @override
  State<UrlWidget> createState() => _UrlWidgetState();
}

class _UrlWidgetState extends State<UrlWidget> {
  late UrlModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UrlModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Html(
      data: widget.webLink!,
      onLinkTap: (url, _, __) => launchURL(url!),
    );
  }
}
