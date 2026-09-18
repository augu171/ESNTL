import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'title_info_model.dart';
export 'title_info_model.dart';

class TitleInfoWidget extends StatefulWidget {
  const TitleInfoWidget({
    super.key,
    this.textBody,
    double? textSize,
  }) : this.textSize = textSize ?? 16.0;

  final String? textBody;
  final double textSize;

  @override
  State<TitleInfoWidget> createState() => _TitleInfoWidgetState();
}

class _TitleInfoWidgetState extends State<TitleInfoWidget> {
  late TitleInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TitleInfoModel());
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
        widget.textBody,
        'text',
      ),
      textAlign: TextAlign.center,
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
            color: FlutterFlowTheme.of(context).primary,
            fontSize: widget.textSize,
            letterSpacing: 0.0,
            fontWeight: FontWeight.w800,
            lineHeight: 1.2,
            useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
          ),
    );
  }
}
