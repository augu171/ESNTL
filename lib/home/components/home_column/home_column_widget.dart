import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/cmr_favorite_card/cmr_favorite_card_widget.dart';
import '/home/components/cmr_pulse_card/cmr_pulse_card_widget.dart';
import 'package:flutter/material.dart';
import 'home_column_model.dart';
export 'home_column_model.dart';

class HomeColumnWidget extends StatefulWidget {
  const HomeColumnWidget({super.key});

  @override
  State<HomeColumnWidget> createState() => _HomeColumnWidgetState();
}

class _HomeColumnWidgetState extends State<HomeColumnWidget> {
  late HomeColumnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeColumnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    width: 100.0,
                    height: 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xFF4D4D4D),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: Container(
                      height: 29.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 6.0, 12.0, 6.0),
                        child: Text(
                          'HOME',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xFF4D4D4D),
                    ),
                  ),
                ),
              ],
            ),
          ),
          wrapWithModel(
            model: _model.cmrPulseCardModel,
            updateCallback: () => safeSetState(() {}),
            child: CmrPulseCardWidget(),
          ),
          wrapWithModel(
            model: _model.cmrFavoriteCardModel,
            updateCallback: () => safeSetState(() {}),
            child: CmrFavoriteCardWidget(),
          ),
        ],
      ),
    );
  }
}
