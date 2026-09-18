import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'text_body_model.dart';
export 'text_body_model.dart';

class TextBodyWidget extends StatefulWidget {
  const TextBodyWidget({
    super.key,
    String? textBody,
  }) : this.textBody = textBody ?? 'text';

  final String textBody;

  @override
  State<TextBodyWidget> createState() => _TextBodyWidgetState();
}

class _TextBodyWidgetState extends State<TextBodyWidget> {
  late TextBodyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextBodyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.textBody,
      textAlign: TextAlign.center,
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
            fontSize: 14.0,
            letterSpacing: 0.0,
            lineHeight: 1.25,
            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
          ),
    );
  }
}
