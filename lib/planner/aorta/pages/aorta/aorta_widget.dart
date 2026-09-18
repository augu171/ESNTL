import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/sub_sentence/sub_sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'aorta_model.dart';
export 'aorta_model.dart';

class AortaWidget extends StatefulWidget {
  const AortaWidget({super.key});

  static String routeName = 'Aorta';
  static String routePath = '/aorta';

  @override
  State<AortaWidget> createState() => _AortaWidgetState();
}

class _AortaWidgetState extends State<AortaWidget> {
  late AortaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AortaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).tertiaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              wrapWithModel(
                model: _model.gradientBackgroundModel,
                updateCallback: () => safeSetState(() {}),
                child: GradientBackgroundWidget(),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.appBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: AppBarWidget(
                          label: 'AORTA',
                          itemId: 'AORTA',
                          screenName: 'Aorta',
                          itemRef:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-k0itw5/assets/7nwqbe27f8df/Views_Planner.svg',
                          titleText: 'AORTA',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.titleModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TitleWidget(
                                          content: 'CANDY CANE',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.sentenceModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Vista sagital oblicua de la aorta torácica',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Se llama “candy cane” por su similitud con un bastón de caramelo',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Permite visualizar simultáneamente:',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.subSentenceModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SubSentenceWidget(
                                              content: 'Aorta ascendente',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.subSentenceModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SubSentenceWidget(
                                              content: 'Arco aórtico',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.subSentenceModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SubSentenceWidget(
                                              content:
                                                  'Aorta torácica descendente',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Puede adquirirse como cine SSFP y/o flujo',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'El flujo In-plane permite visualizar zonas de aceleración, vórtices y dirección, pero no permite medir (para ello se debe hacer un flujo “through-plane” en la zona de interés).',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.titleModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TitleWidget(
                                          content: 'PROGRAMACIÓN',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Stack(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                children: [
                                  Stack(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 9.0),
                                        child: Container(
                                          height: 142.0,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lightGray1,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/img1_Aorta.png',
                                              fit: BoxFit.fitHeight,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 142.0,
                                              decoration: BoxDecoration(),
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.05, -0.27),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/flechas.svg',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Container(
                                                height: 142.0,
                                                decoration: BoxDecoration(),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.28, -0.38),
                                                  child: SvgPicture.asset(
                                                    'assets/images/flecha.svg',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: 93.0,
                                        height: 19.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xC03B3B3B),
                                          borderRadius:
                                              BorderRadius.circular(3.46),
                                          border: Border.all(
                                            color: Color(0xFF535353),
                                            width: 0.8,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'tjt7szue' /* Ao ASC + DESC */,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                  lineHeight: 1.2,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Container(
                                          width: 73.0,
                                          height: 19.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xC03B3B3B),
                                            borderRadius:
                                                BorderRadius.circular(3.46),
                                            border: Border.all(
                                              color: Color(0xFF535353),
                                              width: 0.8,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '66mt2afp' /* Arco medio */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 10.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                    lineHeight: 1.2,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.sentenceModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SentenceWidget(
                                          content:
                                              'Se planifica usando imágenes axiales white-blood o black-blood, trazando un plano que atraviese tres puntos (flechas blancas):',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subSentenceModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SubSentenceWidget(
                                          content: 'Aorta ascendente',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subSentenceModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SubSentenceWidget(
                                          content:
                                              'Porción media del arco aórtico',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subSentenceModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SubSentenceWidget(
                                          content: 'Aorta descendente',
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.sentenceModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SentenceWidget(
                                          content:
                                              'En aortas muy anguladas o tortuosas puede ser difícil incluir todo el trayecto en un único plano y se pueden adquirir varios cortes paralelos',
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.titleModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TitleWidget(
                                            content: 'AORTA CANDY CANE',
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 9.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 174.0,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lightGray1,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(1.0),
                                                child: FlutterFlowVideoPlayer(
                                                  path:
                                                      'assets/videos/Video_1_Aorta.mp4',
                                                  videoType: VideoType.asset,
                                                  height: 172.0,
                                                  autoPlay: true,
                                                  looping: true,
                                                  showControls: false,
                                                  allowFullScreen: false,
                                                  allowPlaybackSpeedMenu: false,
                                                  pauseOnNavigate: false,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                width: 49.0,
                                                height: 19.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xC03B3B3B),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.46),
                                                  border: Border.all(
                                                    color: Color(0xFF535353),
                                                    width: 0.8,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4jbqdix7' /* CINE */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .roboto(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.2,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 49.0,
                                                height: 19.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xC03B3B3B),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.46),
                                                  border: Border.all(
                                                    color: Color(0xFF535353),
                                                    width: 0.8,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hawb4k63' /* FLUJO */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .roboto(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.2,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.titleModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TitleWidget(
                                            content:
                                                'EJEMPLOS PATOLOGIA AÓRTICA',
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 9.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 238.0,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lightGray1,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(1.0),
                                                child: FlutterFlowVideoPlayer(
                                                  path:
                                                      'assets/videos/Video_2_Aorta.mp4',
                                                  videoType: VideoType.asset,
                                                  height: 238.0,
                                                  autoPlay: true,
                                                  looping: true,
                                                  showControls: false,
                                                  allowFullScreen: false,
                                                  allowPlaybackSpeedMenu: false,
                                                  pauseOnNavigate: false,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                width: 93.0,
                                                height: 19.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xC03B3B3B),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.46),
                                                  border: Border.all(
                                                    color: Color(0xFF535353),
                                                    width: 0.8,
                                                  ),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5f7arked' /* COARTACION */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .roboto(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.2,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Container(
                                                  width: 73.0,
                                                  height: 19.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xC03B3B3B),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3.46),
                                                    border: Border.all(
                                                      color: Color(0xFF535353),
                                                      width: 0.8,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'o0g7j1cr' /* ANEURISMA */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .roboto(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                            lineHeight: 1.2,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.swipeContinueModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SwipeContinueWidget(),
                                ),
                              ),
                              Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27.5, 0.0, 27.5, 0.0),
                  child: Container(
                    height: 71.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: wrapWithModel(
                      model: _model.navbarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavbarWidget(
                        pButtonPressed: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
