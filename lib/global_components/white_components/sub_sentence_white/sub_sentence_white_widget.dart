import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sub_sentence_white_model.dart';
export 'sub_sentence_white_model.dart';

class SubSentenceWhiteWidget extends StatefulWidget {
  const SubSentenceWhiteWidget({
    super.key,
    String? content1,
    Color? pointColor,
    String? content2,
    Color? content1Color,
    this.contentBold1,
    this.contentBold2,
    this.contentBold3,
    Color? content2Color,
    Color? content3Color,
    String? content3,
  })  : this.content1 = content1 ?? '',
        this.pointColor = pointColor ?? Colors.black,
        this.content2 = content2 ?? '',
        this.content1Color = content1Color ?? Colors.black,
        this.content2Color = content2Color ?? Colors.black,
        this.content3Color = content3Color ?? Colors.black,
        this.content3 = content3 ?? '';

  final String content1;
  final Color pointColor;
  final String content2;
  final Color content1Color;
  final String? contentBold1;
  final String? contentBold2;
  final String? contentBold3;
  final Color content2Color;
  final Color content3Color;
  final String content3;

  @override
  State<SubSentenceWhiteWidget> createState() => _SubSentenceWhiteWidgetState();
}

class _SubSentenceWhiteWidgetState extends State<SubSentenceWhiteWidget> {
  late SubSentenceWhiteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubSentenceWhiteModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 8.0, 0.0),
          child: Text(
            FFLocalizations.of(context).getText(
              'edivv8eo' /* • */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.roboto(
                    fontWeight: FontWeight.normal,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: valueOrDefault<Color>(
                    widget.pointColor,
                    Colors.black,
                  ),
                  fontSize: 14.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  lineHeight: 1.25,
                ),
          ),
        ),
        Expanded(
          flex: 1,
          child: RichText(
            textScaler: MediaQuery.of(context).textScaler,
            text: TextSpan(
              children: [
                TextSpan(
                  text: widget.content1,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: valueOrDefault<Color>(
                          widget.content1Color,
                          Colors.black,
                        ),
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        lineHeight: 1.25,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
                TextSpan(
                  text: valueOrDefault<String>(
                    widget.contentBold1,
                    'b1',
                  ),
                  style: TextStyle(
                    color: valueOrDefault<Color>(
                      widget.content1Color,
                      Colors.black,
                    ),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    height: 1.25,
                  ),
                ),
                TextSpan(
                  text: valueOrDefault<String>(
                    widget.content2,
                    'c2',
                  ),
                  style: TextStyle(
                    color: valueOrDefault<Color>(
                      widget.content2Color,
                      Colors.black,
                    ),
                    fontSize: 14.0,
                    height: 1.25,
                  ),
                ),
                TextSpan(
                  text: valueOrDefault<String>(
                    widget.contentBold2,
                    'b2',
                  ),
                  style: TextStyle(
                    color: valueOrDefault<Color>(
                      widget.content2Color,
                      Colors.black,
                    ),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    height: 1.25,
                  ),
                ),
                TextSpan(
                  text: valueOrDefault<String>(
                    widget.content3,
                    'c3',
                  ),
                  style: TextStyle(
                    color: valueOrDefault<Color>(
                      widget.content3Color,
                      Colors.black,
                    ),
                    fontSize: 14.0,
                    height: 1.25,
                  ),
                ),
                TextSpan(
                  text: valueOrDefault<String>(
                    widget.contentBold3,
                    'b3',
                  ),
                  style: TextStyle(
                    color: valueOrDefault<Color>(
                      widget.content3Color,
                      Colors.black,
                    ),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    height: 1.25,
                  ),
                )
              ],
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: Colors.black,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    lineHeight: 1.25,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
