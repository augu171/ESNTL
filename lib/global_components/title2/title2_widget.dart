import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'title2_model.dart';
export 'title2_model.dart';

class Title2Widget extends StatefulWidget {
  const Title2Widget({
    super.key,
    String? content,
  }) : this.content = content ?? 'Text Content';

  final String content;

  @override
  State<Title2Widget> createState() => _Title2WidgetState();
}

class _Title2WidgetState extends State<Title2Widget> {
  late Title2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Title2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: Text(
        valueOrDefault<String>(
          widget.content,
          'TextValue',
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
              color: FlutterFlowTheme.of(context).primary,
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.bold,
              lineHeight: 1.2,
              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
            ),
      ),
    );
  }
}
