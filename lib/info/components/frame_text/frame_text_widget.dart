import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'frame_text_model.dart';
export 'frame_text_model.dart';

class FrameTextWidget extends StatefulWidget {
  const FrameTextWidget({
    super.key,
    String? textBody,
    double? height,
    double? textSize,
  })  : this.textBody = textBody ?? 'Text ',
        this.height = height ?? 46.0,
        this.textSize = textSize ?? 12.0;

  final String textBody;
  final double height;
  final double textSize;

  @override
  State<FrameTextWidget> createState() => _FrameTextWidgetState();
}

class _FrameTextWidgetState extends State<FrameTextWidget> {
  late FrameTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FrameTextModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        color: Color(0xFF404040),
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(
          width: 0.1,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent1,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x0CFFFFFF),
                offset: Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(
              color: Color(0x19FFFFFF),
              width: 0.1,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 3.0),
              child: Text(
                widget.textBody,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: widget.textSize,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      lineHeight: 1.2,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
