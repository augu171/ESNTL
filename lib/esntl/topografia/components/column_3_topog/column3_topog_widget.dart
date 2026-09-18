import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import '/global_components/white_components/sentence_white/sentence_white_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'column3_topog_model.dart';
export 'column3_topog_model.dart';

class Column3TopogWidget extends StatefulWidget {
  const Column3TopogWidget({super.key});

  @override
  State<Column3TopogWidget> createState() => _Column3TopogWidgetState();
}

class _Column3TopogWidgetState extends State<Column3TopogWidget> {
  late Column3TopogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Column3TopogModel());
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
                content: '¿Qué son los ejes cardíacos?',
              ),
            ),
          ),
          wrapWithModel(
            model: _model.sentenceWhiteModel1,
            updateCallback: () => safeSetState(() {}),
            child: SentenceWhiteWidget(
              content1: 'En imagen cardíaca se utilizan ',
              content2: '(axial, coronal, sagital)',
              contentBold1:
                  'planos oblicuos respecto a los ejes anatómicos estrictos del cuerpo ',
              contentBold2: ' ',
              contentBold3: ' ',
              content3: ' ',
            ),
          ),
          wrapWithModel(
            model: _model.sentenceWhiteModel2,
            updateCallback: () => safeSetState(() {}),
            child: SentenceWhiteWidget(
              content1:
                  'Esto debido a que el corazón posee una orientación propia dentro del tórax, y las vistas deben alinearse con su eje real',
              content2: ' ',
              contentBold1: ' ',
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
                  'Estos planos son la base de la planificación en RMC y permiten aplicar el',
              content2: 'modelo de 17 segmentos AHA',
              contentBold1: ' ',
              contentBold2: ' ',
              contentBold3: ' ',
              content2Color: FlutterFlowTheme.of(context).primary,
              content3: 'desde distintos ángulos',
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Stack(
                alignment: AlignmentDirectional(0.0, 0.0),
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/Img2_Corazon_Topografia.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/Img5_Topografia.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          wrapWithModel(
            model: _model.sentenceWhiteModel4,
            updateCallback: () => safeSetState(() {}),
            child: SentenceWhiteWidget(
              content1: '',
              pointColor: Color(0xFFF62C2C),
              content2:
                  'Plano que atraviesa el corazón desde la base hasta el vértice (apex), alineado con el eje mayor del ventrículo izquierdo. Incluye vistas como 2C, 3C y 4C',
              content1Color: Color(0xFFF62C2C),
              contentBold1: 'Eje largo (long axis): ',
              contentBold2: ' ',
              contentBold3: ' ',
              content3: ' ',
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
            child: wrapWithModel(
              model: _model.sentenceWhiteModel5,
              updateCallback: () => safeSetState(() {}),
              child: SentenceWhiteWidget(
                content1: '',
                pointColor: Color(0xFF059669),
                content2:
                    'Plano perpendicular al eje largo, que corta el ventrículo en “rodajas” desde base a apex',
                content1Color: Color(0xFF059669),
                contentBold1: 'Eje corto (short axis): ',
                contentBold2: ' ',
                contentBold3: ' ',
                content3: ' ',
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 354.0,
                    height: 425.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: FlutterFlowVideoPlayer(
                      path:
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-k0itw5/assets/8q43xfh16afs/Video1_Topografia.mp4',
                      videoType: VideoType.network,
                      width: 350.0,
                      height: 420.0,
                      autoPlay: true,
                      looping: true,
                      showControls: false,
                      allowFullScreen: false,
                      allowPlaybackSpeedMenu: false,
                    ),
                  ),
                ),
                Container(
                  width: 354.0,
                  height: 425.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 1.02),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 42.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDDDDDD),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'da92h8dh' /* 4C */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF161616),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.2,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 42.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDDDDDD),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'vccps7yg' /* EC */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF161616),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.2,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.92),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 42.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDDDDDD),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ulnvcioz' /* 2C */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF161616),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.2,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 42.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDDDDDD),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'n718ad9o' /* 3C */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: Color(0xFF161616),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          lineHeight: 1.2,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
            height: 84.0,
            decoration: BoxDecoration(),
          ),
        ],
      ),
    );
  }
}
