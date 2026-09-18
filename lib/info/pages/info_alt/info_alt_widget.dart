import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/global_components/app_bar_simple/app_bar_simple_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title_simple/title_simple_widget.dart';
import '/info/components/frame_text/frame_text_widget.dart';
import '/info/components/item_list/item_list_widget.dart';
import '/info/components/text_body/text_body_widget.dart';
import '/info/components/title_info/title_info_widget.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'info_alt_model.dart';
export 'info_alt_model.dart';

class InfoAltWidget extends StatefulWidget {
  const InfoAltWidget({
    super.key,
    int? dotValueParameter,
    bool? isLogged,
  })  : this.dotValueParameter = dotValueParameter ?? 0,
        this.isLogged = isLogged ?? false;

  final int dotValueParameter;
  final bool isLogged;

  static String routeName = 'InfoAlt';
  static String routePath = '/infoAlt';

  @override
  State<InfoAltWidget> createState() => _InfoAltWidgetState();
}

class _InfoAltWidgetState extends State<InfoAltWidget> {
  late InfoAltModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoAltModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dotValue = widget.dotValueParameter;
      safeSetState(() {});
    });
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
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.appBarSimpleModel,
                        updateCallback: () => safeSetState(() {}),
                        child: AppBarSimpleWidget(
                          textTitle: () {
                            if (_model.dotValue == 0) {
                              return 'INTRO';
                            } else if (_model.dotValue == 1) {
                              return 'LEGAL';
                            } else if (_model.dotValue == 2) {
                              return 'AUTOR';
                            } else if (_model.dotValue == 3) {
                              return 'NIVELES';
                            } else if (_model.dotValue == 4) {
                              return 'SELLO';
                            } else if (_model.dotValue == 5) {
                              return 'IA ZERO';
                            } else {
                              return 'Titulo';
                            }
                          }(),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  _model.dotValue == 0
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0xFF373737),
                                  FlutterFlowTheme.of(context).primary,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  _model.dotValue == 1
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0xFF373737),
                                  FlutterFlowTheme.of(context).primary,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  _model.dotValue == 2
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0xFF373737),
                                  FlutterFlowTheme.of(context).primary,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  _model.dotValue == 3
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0xFF373737),
                                  FlutterFlowTheme.of(context).primary,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  _model.dotValue == 4
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0xFF373737),
                                  FlutterFlowTheme.of(context).primary,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: valueOrDefault<Color>(
                                  _model.dotValue == 5
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0xFF373737),
                                  FlutterFlowTheme.of(context).primary,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 3.0)),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 500.0,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 40.0),
                            child: PageView(
                              controller: _model.pageViewController ??=
                                  PageController(
                                      initialPage: max(
                                          0,
                                          min(
                                              valueOrDefault<int>(
                                                widget.dotValueParameter,
                                                0,
                                              ),
                                              5))),
                              onPageChanged: (_) async {
                                _model.dotValue = _model.pageViewCurrentIndex;
                                safeSetState(() {});
                              },
                              scrollDirection: Axis.horizontal,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.titleInfoModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TitleInfoWidget(
                                          textBody: '¿Porqué esta APP? ',
                                          textSize: 16.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 6.0, 0.0, 6.0),
                                        child: wrapWithModel(
                                          model: _model.textBodyModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextBodyWidget(
                                            textBody:
                                                'La tecnología puede automatizar cortes, pero no reemplaza el criterio clínico RMC Planner te entrega lo que el software no: \ncómo pensar, orientar, corregir y decidir en estudios reales',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: wrapWithModel(
                                          model: _model.titleInfoModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TitleInfoWidget(
                                            textBody:
                                                'No es adquirir, es entender',
                                            textSize: 14.0,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            'assets/images/corazon_Intro.svg',
                                            fit: BoxFit.scaleDown,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        child: wrapWithModel(
                                          model: _model.frameTextModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: FrameTextWidget(
                                            textBody:
                                                'Contenido inspirado + respaldado por \n> 5K estudios de RMC y sumando',
                                            height: 46.0,
                                            textSize: 12.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: wrapWithModel(
                                          model: _model.titleInfoModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TitleInfoWidget(
                                            textBody: '¿Qué encontrarás? ',
                                            textSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.itemListModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemListWidget(
                                              textBody:
                                                  'Topografía cardíaca esencial para RMC',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.itemListModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemListWidget(
                                              textBody:
                                                  'Planificación anatómica paso a paso',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.itemListModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemListWidget(
                                              textBody:
                                                  'Orientación correcta de cada plano clave',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.itemListModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemListWidget(
                                              textBody:
                                                  'Secuencias fundamentales y avanzadas',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.itemListModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemListWidget(
                                              textBody:
                                                  'Tips y errores comunes explicados con claridad',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.itemListModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemListWidget(
                                              textBody:
                                                  'Protocolos por patología (IAM, MCH, MINOCA, etc.)',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.itemListModel7,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ItemListWidget(
                                              textBody:
                                                  'Editor de protocolos personalizables',
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 5.0)),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 14.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.swipeContinueModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SwipeContinueWidget(),
                                        ),
                                      ),
                                      Container(
                                        width: 100.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.05,
                                        decoration: BoxDecoration(),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 6.0),
                                        child: wrapWithModel(
                                          model: _model.titleInfoModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TitleInfoWidget(
                                            textBody: 'AVISO LEGAL',
                                            textSize: 18.0,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.sentenceModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Esta aplicación de resonancia magnética cardíaca tiene un propósito exclusivamente informativo y está destinada a profesionales de la salud',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'La información disponible no reemplaza el juicio clínico ni constituye asesoría médica, diagnóstico o tratamiento',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Toda recomendación, cálculo o contenido debe ser verificado por personal calificado antes de su uso ',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'El autor no garantiza la exactitud, vigencia o integridad del contenido, y declina toda responsabilidad por su uso',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'El uso de esta aplicación implica la aceptación de estas condiciones',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'INCIC, CMR ESSENTIAL, ESNTL son marcas registradas en Chile y/o EE. UU',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 14.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.swipeContinueModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SwipeContinueWidget(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 6.0),
                                      child: wrapWithModel(
                                        model: _model.titleInfoModel5,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TitleInfoWidget(
                                          textBody: 'SOBRE MI',
                                          textSize: 18.0,
                                        ),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.textBodyModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TextBodyWidget(
                                              textBody:
                                                  'Médico internista, Cardiólogo, Ecocardiografísta y especialista en imagen cardíaca avanzada\n•\n“Tengo la convicción de que la resonancia magnética cardíaca es la piedra angular de la cardiología moderna y el motor de la cardiología de precisión”\n•\nEsta plataforma nace para democratizar su acceso, enseñar con claridad y derribar las barreras que aún la hacen compleja o inaccesible\n•\nLa RMC debe estar al alcance de todos',
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'eqp6tkhv' /* Julián Vega Adauy /  */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.sansita(
                                                        fontWeight:
                                                            FontWeight.w200,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 22.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w200,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'p4ayyiyw' /* FSCMR */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.sansita(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 22.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ],
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Foto_Info.jpg',
                                              height: 130.0,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'f52jlq0k' /* CHIEF MAGNETIC OFFICER |CMO| E... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .robotoCondensed(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'mkaedw2v' /* N */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .robotoCondensed(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  't21x5pmg' /* TL CMR */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .robotoCondensed(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    80.0, 0.0, 80.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  FFIcons.kmailForward,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 30.0,
                                                ),
                                                Icon(
                                                  FFIcons.kx,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 30.0,
                                                ),
                                                FaIcon(
                                                  FontAwesomeIcons.linkedin,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 30.0,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            24.0),
                                                  ),
                                                  child: Icon(
                                                    FFIcons.krg,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 30.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 12.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.swipeContinueModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SwipeContinueWidget(),
                                      ),
                                    ),
                                    Container(
                                      width: 100.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.05,
                                      decoration: BoxDecoration(),
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.titleInfoModel6,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TitleInfoWidget(
                                          textBody:
                                              'NIVELES DE FORMACIÓN EN RMC',
                                          textSize: 18.0,
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.textBodyModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextBodyWidget(
                                          textBody:
                                              'A nivel internacional, la formación en resonancia magnética cardíaca sigue modelos basados en competencias, abiertos a Cardiólogos y Radiólogos, donde la certificación y el ejercicio independiente dependen de habilidades verificadas y no del título profesional de origen.',
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/nvl_1_Info.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm6tnmlw5' /* Nivel 1
Básico */
                                                        ,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            lineHeight: 1.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 12.0)),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/nvl_2_Info.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p942cp6u' /* Nivel 2
Supervisado */
                                                      ,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          lineHeight: 1.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 12.0)),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/nvl_3_Info.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      's0w6ee8g' /* Nivel 3
Experto */
                                                      ,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          lineHeight: 1.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 12.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 6.0),
                                            child: wrapWithModel(
                                              model: _model.frameTextModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: FrameTextWidget(
                                                textBody: 'NIVEL I',
                                                height: 30.0,
                                                textSize: 12.0,
                                              ),
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.titleSimpleModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleSimpleWidget(
                                              content:
                                                  'CONOCIMIENTOS BÁSICOS ESENCIALES',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel7,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Duración mínima: 1 semana (observación + teoría)',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel8,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Exámenes revisados: ≥ 50 casos (como observador)',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel9,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Rol: No autorizado para informar estudios',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.frameTextModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FrameTextWidget(
                                              textBody: 'NIVEL II',
                                              height: 30.0,
                                              textSize: 12.0,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.titleSimpleModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleSimpleWidget(
                                              content:
                                                  'INTERPRETACIÓN SUPERVISADA',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel10,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Duración mínima: 3 meses (acumulativos)',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel11,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Exámenes interpretados: ≥ 150',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel12,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Rol: Puede informar estudios bajo supervisión, no de forma autónoma',
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 6.0)),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.frameTextModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: FrameTextWidget(
                                              textBody: 'NIVEL III',
                                              height: 30.0,
                                              textSize: 12.0,
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.titleSimpleModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleSimpleWidget(
                                              content: 'EXPERTO INDEPENDIENTE',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel13,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Duración mínima: ≥ 12 meses de un programa dedicado exclusivo (no programas multi-imagen)',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel14,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Exámenes interpretados: ≥ 300',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel15,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Rol Informar de forma autónoma, dirige un programa',
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 6.0)),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.swipeContinueModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SwipeContinueWidget(),
                                        ),
                                      ),
                                      Container(
                                        width: 100.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.04,
                                        decoration: BoxDecoration(),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.titleInfoModel7,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TitleInfoWidget(
                                          textBody: 'SELLO DE PRECISIÓN',
                                          textSize: 18.0,
                                        ),
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '8z6u2hmc' /* Ilustraciones con autoria médi... */,
                                        ),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              lineHeight: 1.25,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.sentenceModel16,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'En muchas aplicaciones, las ilustraciones se delegan a diseñadores médicos que, aunque manejan anatomía básica, no cuentan con experiencia clínica ni formación en resonancia cardíaca avanzada, lo que conduce a errores o simplificaciones',
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '83gddeq3' /* • */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.25,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '8durk58z' /* En ES */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              lineHeight: 1.25,
                                                              useGoogleFonts:
                                                                  !FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumIsCustom,
                                                            ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'v01vq3u7' /* N */,
                                                        ),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 14.0,
                                                          height: 1.25,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'v8709geu' /* LT CMR ocurre lo contrario: el... */,
                                                        ),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          height: 1.25,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.25,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel17,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'El 100 % de las ilustraciones fue creado personalmente por el autor, cardiólogo especialista en resonancia cardíaca, mediante diseño vectorial',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 8.0, 48.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'g803wecn' /* :::: TSVD  */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 22.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                useGoogleFonts:
                                                                    !FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMediumIsCustom,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'vx6r5pnu' /* RVOT */,
                                                          ),
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 22.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                !FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumIsCustom,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Stack(
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  30.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: 133.5,
                                                              height: 209.8,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Stack(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowVideoPlayer(
                                                                      path:
                                                                          'assets/videos/video_1_Info.mp4',
                                                                      videoType:
                                                                          VideoType
                                                                              .asset,
                                                                      width:
                                                                          133.5,
                                                                      height:
                                                                          209.0,
                                                                      autoPlay:
                                                                          true,
                                                                      looping:
                                                                          true,
                                                                      showControls:
                                                                          false,
                                                                      allowFullScreen:
                                                                          false,
                                                                      allowPlaybackSpeedMenu:
                                                                          false,
                                                                      lazyLoad:
                                                                          false,
                                                                      pauseOnNavigate:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '3x9hmetr' /* .MP4 */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontSize: 22.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w900,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Container(
                                                              width: 133.5,
                                                              height: 209.8,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Stack(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowVideoPlayer(
                                                                      path:
                                                                          'assets/videos/video_2_Info.mp4',
                                                                      videoType:
                                                                          VideoType
                                                                              .asset,
                                                                      width:
                                                                          133.5,
                                                                      height:
                                                                          209.0,
                                                                      autoPlay:
                                                                          true,
                                                                      looping:
                                                                          true,
                                                                      showControls:
                                                                          false,
                                                                      allowFullScreen:
                                                                          false,
                                                                      allowPlaybackSpeedMenu:
                                                                          false,
                                                                      lazyLoad:
                                                                          false,
                                                                      pauseOnNavigate:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          48.0,
                                                                          0.0,
                                                                          17.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Corazon_Vector_Blanco_Video_Info.svg',
                                                                            fit:
                                                                                BoxFit.fitHeight,
                                                                          ),
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
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0, 0.0,
                                                                30.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            height: 210.0,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Stack(
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/imagen_Info_Sello.svg',
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            45.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'xkuzd3r2' /* VI */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xFF731B00),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w900,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            55.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'lxaj0mys' /* AI */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                Color(0xFF731B00),
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w900,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            82.0,
                                                                            35.0,
                                                                            0.0),
                                                                    child: Transform
                                                                        .rotate(
                                                                      angle: 302.0 *
                                                                          (math.pi /
                                                                              180),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'cne6p2yv' /* TSVD */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: Color(0xFF731B00),
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          -1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            20.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '39nl8xkd' /* .SVG */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            fontSize:
                                                                                22.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w900,
                                                                            useGoogleFonts:
                                                                                !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              height: 210.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Stack(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/images/Vector_Corazon_Blanco_Info.svg',
                                                                        height:
                                                                            60.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/images/Vector_Corazon_Naranja_Info.svg',
                                                                        height:
                                                                            60.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            1.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/images/Vector_Corazon_Gris_Info.svg',
                                                                        height:
                                                                            60.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            1.0),
                                                                    child: Transform
                                                                        .translate(
                                                                      offset: Offset(
                                                                          25.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/images/Vector_Corazon_Blanco_Info.svg',
                                                                          height:
                                                                              155.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: FFLocalizations.of(context).getText(
                                                                                'yje5dijf' /* icon */,
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.robotoCondensed(
                                                                                      fontWeight: FontWeight.w900,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    fontSize: 22.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w900,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: FFLocalizations.of(context).getText(
                                                                                '75qe7k05' /* .SVG */,
                                                                              ),
                                                                              style: GoogleFonts.robotoCondensed(
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w900,
                                                                                fontSize: 22.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                fontSize: 22.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w900,
                                                                                useGoogleFonts: !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Frame_10_1.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.sentenceModel18,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'El diseño mantiene un estilo limpio y responsivo, pensado para pantallas móviles',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel19,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'La paleta de colores combina nimbus Cloud, orange slice, nebulosity y anthracite',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel20,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Esta selección transmite equilibrio, energía y modernidad, asegurando coherencia en íconos, tipografía y transiciones para una experiencia visual uniforme y limpia',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.swipeContinueModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SwipeContinueWidget(),
                                        ),
                                      ),
                                      Container(
                                        width: 100.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.04,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.titleInfoModel8,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TitleInfoWidget(
                                          textBody: 'ZERO IA GENERATIVA',
                                          textSize: 18.0,
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.sentenceModel21,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Todo el contenido educativo y científico ha sido creado, revisado y redactado íntegramente por su autor médico',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel22,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Cada concepto, recomendación, esquema e interpretación refleja experiencia clínica real',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel23,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'No existen textos producidos automáticamente ni referencias inventadas por IA',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel24,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'El contenido mantiene autoría, criterio médico y responsabilidad humana al 100%',
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        8.0, 0.0, 8.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '776cwpbf' /* • */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.roboto(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                        lineHeight: 1.25,
                                                      ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '6w4hzr4w' /* ZERO  */,
                                                        ),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14.0,
                                                          height: 1.25,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'n2c8qaqw' /* alucinaciones generadas por IA */,
                                                        ),
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          height: 1.25,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          lineHeight: 1.25,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMediumIsCustom,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          wrapWithModel(
                                            model: _model.sentenceModel25,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SentenceWidget(
                                              content:
                                                  'Contenido humano, fidedigno, preciso y pertinente',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            'assets/images/NO_AI_Info.svg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              '2xko6ecr' /* IA GENERATIVA ZERO */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 24.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  lineHeight: 1.2,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'xhfresc8' /* Conocimiento médico 
creado po... */
                                              ,
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  lineHeight: 1.2,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            'assets/images/no_ia_icon_Info.svg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.swipeContinueModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SwipeContinueWidget(),
                                        ),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.04,
                                        decoration: BoxDecoration(),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (widget.isLogged)
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(27.5, 0.0, 27.5, 0.0),
                    child: Container(
                      height: 71.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: wrapWithModel(
                        model: _model.navbarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: NavbarWidget(
                          pButtonPressed: 6,
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
