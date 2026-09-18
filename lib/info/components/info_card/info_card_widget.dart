import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'info_card_model.dart';
export 'info_card_model.dart';

class InfoCardWidget extends StatefulWidget {
  const InfoCardWidget({
    super.key,
    this.icon,
    String? label,
    Color? tint,
  })  : this.label = label ?? '¿Porqué esta APP?',
        this.tint = tint ?? const Color(0x00000000);

  final Widget? icon;
  final String label;
  final Color tint;

  @override
  State<InfoCardWidget> createState() => _InfoCardWidgetState();
}

class _InfoCardWidgetState extends State<InfoCardWidget> {
  late InfoCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF404040),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(1.5, 0.5, 0.0, 0.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF282828),
            boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
                color: Color(0x0CFFFFFF),
                offset: Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14.0),
              topRight: Radius.circular(12.0),
              bottomLeft: Radius.circular(14.0),
              bottomRight: Radius.circular(12.0),
            ),
            shape: BoxShape.rectangle,
            border: Border.all(
              width: 0.1,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      widget.icon!,
                      Text(
                        valueOrDefault<String>(
                          widget.label,
                          '¿Porqué esta APP?',
                        ),
                        style: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              font: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                              lineHeight: 1.2,
                            ),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: valueOrDefault<Color>(
                      widget.tint,
                      FlutterFlowTheme.of(context).primary,
                    ),
                    size: 24.0,
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
