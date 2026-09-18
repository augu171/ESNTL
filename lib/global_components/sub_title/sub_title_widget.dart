import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sub_title_model.dart';
export 'sub_title_model.dart';

class SubTitleWidget extends StatefulWidget {
  const SubTitleWidget({
    super.key,
    String? content,
    double? textSize,
  })  : this.content = content ?? 'Text Content',
        this.textSize = textSize ?? 14.0;

  final String content;
  final double textSize;

  @override
  State<SubTitleWidget> createState() => _SubTitleWidgetState();
}

class _SubTitleWidgetState extends State<SubTitleWidget> {
  late SubTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubTitleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      valueOrDefault<String>(
        widget.content,
        'TextValue',
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
            color: FlutterFlowTheme.of(context).primaryText,
            fontSize: 14.0,
            letterSpacing: 0.0,
            fontWeight: FontWeight.normal,
            lineHeight: 1.25,
            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
          ),
    );
  }
}
