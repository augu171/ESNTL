import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import '/global_components/white_components/sentence_white/sentence_white_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'column8_topog_model.dart';
export 'column8_topog_model.dart';

class Column8TopogWidget extends StatefulWidget {
  const Column8TopogWidget({super.key});

  @override
  State<Column8TopogWidget> createState() => _Column8TopogWidgetState();
}

class _Column8TopogWidgetState extends State<Column8TopogWidget> {
  late Column8TopogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Column8TopogModel());
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
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: wrapWithModel(
              model: _model.titleModel,
              updateCallback: () => safeSetState(() {}),
              child: TitleWidget(
                content: 'MODELO AHA 17 SEGMENTOS',
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'phkege0m' /* Visualización de los segmentos... */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: Color(0xFF161616),
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                    lineHeight: 1.2,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFDDDDDD),
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(
                  color: Color(0xFF737372),
                  width: 0.8,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/eje_corto_pag_8_Topografia.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/eje_largo_pag_8_Topografia.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 6.0)),
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.sentenceWhiteModel1,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1:
                      'Los 17 segmentos del modelo AHA pueden observarse desde múltiples planos de corte',
                  content2: ' ',
                  contentBold1: ' ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel2,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1: '',
                  content2:
                      'permite ver los segmentos en cortes transversales (transversal al eje longitudinal del corazón)',
                  content1Color: Color(0xFF161616),
                  contentBold1: 'Eje corto (SAX): ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel3,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1:
                      'Esta correlación multiplanar es clave para interpretar correctamente los hallazgos en cine, perfusión, mapeo paramétrico y realce tardío',
                  content2: ' ',
                  contentBold1: ' ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel4,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1:
                      'Dominar la orientación segmentaria en cada plano es fundamental para evaluar patrones de infarto y patología miocárdica',
                  content2: ' ',
                  contentBold1: ' ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.swipeContinueModel,
              updateCallback: () => safeSetState(() {}),
              child: SwipeContinueWidget(),
            ),
          ),
          Container(
            width: 100.0,
            height: 60.12,
            decoration: BoxDecoration(),
          ),
        ],
      ),
    );
  }
}
