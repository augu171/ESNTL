import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'column9_topog_model.dart';
export 'column9_topog_model.dart';

class Column9TopogWidget extends StatefulWidget {
  const Column9TopogWidget({super.key});

  @override
  State<Column9TopogWidget> createState() => _Column9TopogWidgetState();
}

class _Column9TopogWidgetState extends State<Column9TopogWidget> {
  late Column9TopogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Column9TopogModel());
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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
            child: Container(
              width: 220.0,
              height: 21.0,
              decoration: BoxDecoration(
                color: Color(0xFFFCDECD),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'g44f9xah' /* MODELO AHA 17 SEGMENTOS */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 14.0,
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
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/Img2Pag_9_Topog.svg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SvgPicture.asset(
                'assets/images/Img1_Pag_9_Topog.svg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          wrapWithModel(
            model: _model.swipeContinueModel,
            updateCallback: () => safeSetState(() {}),
            child: SwipeContinueWidget(),
          ),
          Container(
            width: 100.0,
            height: 46.0,
            decoration: BoxDecoration(),
          ),
        ],
      ),
    );
  }
}
