import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import '/global_components/white_components/sentence_white/sentence_white_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'column7_topog_model.dart';
export 'column7_topog_model.dart';

class Column7TopogWidget extends StatefulWidget {
  const Column7TopogWidget({super.key});

  @override
  State<Column7TopogWidget> createState() => _Column7TopogWidgetState();
}

class _Column7TopogWidgetState extends State<Column7TopogWidget> {
  late Column7TopogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Column7TopogModel());
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
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
            child: Container(
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
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        height: 84.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/V1_pag_7_Topologia.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 7.5, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'lfz6851k' /* BASE */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF424242),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.25,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 84.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/V2_pag_7_Topologia.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 6.5, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '4h97knqx' /* MEDIO */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF424242),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.25,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 84.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/V3_pag_7_Topologia.svg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'daawqz6q' /* ÁPEX */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF424242),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.25,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 84.0,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: SvgPicture.asset(
                                'assets/images/V4_pag_7_Topologia.svg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 18.5, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'awompkip' /* Ap CAP */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Color(0xFF424242),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      lineHeight: 1.25,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 6.0)),
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
                      'La segmentación estandarizada de la AHA \n(American Heart Association) divide el ventrículo izquierdo en ',
                  content2:
                      ' agrupados en tres niveles (anillos) de base a ápex',
                  contentBold1: '17 segmentos,',
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
                      'Zona más cercana a las válvulas AV. Termina justo antes de los músculos papilares',
                  content1Color: Color(0xFFF62C2C),
                  contentBold1: 'Basal (segmentos 1–6): ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel3,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1: '',
                  content2:
                      'Porción intermedia donde se insertan los músculos papilares',
                  content1Color: FlutterFlowTheme.of(context).primary,
                  contentBold1: 'Medio (segmentos 7–12): ',
                  contentBold2: '',
                  contentBold3: '  ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel4,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1: '',
                  content2:
                      'Extremo distal del ventrículo, conocido como la “punta” del corazón, normalmente no hay músculos papilares',
                  content1Color: Color(0xFF9A3412),
                  contentBold1: 'Apical (segmentos 13–16): ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel5,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1: '',
                  content2:
                      'Punto más distal del VI, es un corte virtual que no contacta la cavidad',
                  content1Color: Colors.black,
                  contentBold1: 'Ápice o ápex verdadero (segmento 17): ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 18.0),
            child: Container(
              decoration: BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SvgPicture.asset(
                  'assets/images/sax_4.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.sentenceWhiteModel6,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1: '',
                  content2: ' ',
                  content1Color: Colors.black,
                  contentBold1: '¿Por qué un 17º segmento “virtual”?',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel7,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1:
                      'Originalmente se usaba un modelo de 16 segmentos, pero se agregó el segmento 17 para alinear la segmentación con el modelo de medicina nuclear',
                  content2: ' ',
                  contentBold1: ' ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel8,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1:
                      'Este segmento adicional, conocido como “apical cap” (tapa apical), representa el ápice verdadero',
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
