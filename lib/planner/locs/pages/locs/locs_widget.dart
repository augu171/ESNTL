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
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'locs_model.dart';
export 'locs_model.dart';

class LocsWidget extends StatefulWidget {
  const LocsWidget({super.key});

  static String routeName = 'Locs';
  static String routePath = '/locs';

  @override
  State<LocsWidget> createState() => _LocsWidgetState();
}

class _LocsWidgetState extends State<LocsWidget> {
  late LocsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocsModel());
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
                          label: 'LOCS',
                          itemId: 'Locs',
                          screenName: 'Locs',
                          itemRef:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-k0itw5/assets/2pdo8kezbbms/LOCS_Planner.svg',
                          titleText: () {
                            if (_model.dotValue == 0) {
                              return 'LOCS';
                            } else if (_model.dotValue == 1) {
                              return 'WHITE + BLACK BL';
                            } else if (_model.dotValue == 2) {
                              return 'PILOTOS';
                            } else if (_model.dotValue == 3) {
                              return 'PILOT 2C Y 4C';
                            } else if (_model.dotValue == 4) {
                              return 'PILOTE EJE CORTO';
                            } else {
                              return 'LOCS';
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
                                color: _model.dotValue == 1
                                    ? FlutterFlowTheme.of(context).primary
                                    : Color(0xFF373737),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 6.0,
                              decoration: BoxDecoration(
                                color: _model.dotValue == 2
                                    ? FlutterFlowTheme.of(context).primary
                                    : Color(0xFF373737),
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
                        ].divide(SizedBox(width: 3.0)),
                      ),
                    ),
                    Expanded(
                      child: PageView(
                        controller: _model.pageViewController ??=
                            PageController(initialPage: 0),
                        onPageChanged: (_) async {
                          _model.dotValue = _model.pageViewCurrentIndex;
                          safeSetState(() {});
                        },
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/IMG_1_LOCS.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
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
                                              content: 'POSICIÓN',
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'tor1c5sn' /* Anatomia estricta Axial, Coron... */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  lineHeight: 1.25,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
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
                                              content: 'UTILIDAD',
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Permiten alinear el corazón del paciente en el centro exacto del imán.',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Entregan imágenes básicas en los tres planos estrictos',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Ayudan a ver órganos cercanos, como los riñones, en su totalidad.',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Deben repetirse si hay movimiento o se necesita ajustar la posición.',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.swipeContinueModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwipeContinueWidget(),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/IMG_2_LOCS.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.titleModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content:
                                                  'SECUENCIAS SANGRE BLANCA Y NEGRA',
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Habitualmente se realizan en axial estricto',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Opcionalmente en sagital y coronal para facilitar planificación de anatomías complejas y evaluar estructuras extra-cardíacas',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content:
                                                'En respiración libre: para una visión general',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content:
                                                'En apnea: mayor precisión para evaluar anatomía',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel7,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Cobertura: desde la base del cuello hasta la región hepática media',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel8,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Detalles: Grosor 6-8 mm, con o sin GAP',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      border: Border.all(
                                        color: Color(0xFF535353),
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          6.0, 4.0, 6.0, 4.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 2.0,
                                            height: 36.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'txi0x78u' /* En cardiopatías congénitas com... */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        lineHeight: 1.25,
                                                        useGoogleFonts:
                                                            !FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMediumIsCustom,
                                                      ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 30.0)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.swipeContinueModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwipeContinueWidget(),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
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
                                            model: _model.titleModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content: 'PLANOS PILOTO',
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel9,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'En imagen cardíaca se utilizan planos oblicuos (propios del corazón), porque la orientación del corazón no coincide con los planos axial, coronal y sagital',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel10,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Estos planos oblicuos propios del corazón se logran inicialmente con imágenes piloto, también llamadas “falso 2C” y “falso 4C”',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel11,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Los pilotos son secuencias rápidas, de baja resolución, adquiridas en apneas breves, como:',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content: 'Piloto CINE',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content:
                                                'Piloto imagen estática en telediástole',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel12,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'A partir de estos pilotos se definen los principales ejes cardíacos:',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content:
                                                'Eje largo (LAX): atraviesa el corazón desde la base hasta el ápex, sigue su eje mayor',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content:
                                                'Eje corto (SAX): perpendicular al eje largo y corta el corazón en secciones transversales',
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.titleModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content: 'SECUENCIA INICIAL',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF161616),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color: Color(0xFF535353),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 12.0, 16.0, 12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/Axial_Locs.svg',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'oew670j1' /* Axial */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  lineHeight:
                                                                      1.2,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 6.0)),
                                                      ),
                                                    ),
                                                    Transform.rotate(
                                                      angle: 180.0 *
                                                          (math.pi / 180),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Icono_Flecha_Locs.svg',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/2C_PLT_Locs.svg',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '3egdyna9' /* 2C PLT */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  lineHeight:
                                                                      1.2,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 6.0)),
                                                      ),
                                                    ),
                                                    Transform.rotate(
                                                      angle: 180.0 *
                                                          (math.pi / 180),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Icono_Flecha_Locs.svg',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/4C_PLT_Locs.svg',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '1wv5ll0z' /* 4C PLT */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  lineHeight:
                                                                      1.2,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 6.0)),
                                                      ),
                                                    ),
                                                    Transform.rotate(
                                                      angle: 180.0 *
                                                          (math.pi / 180),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Icono_Flecha_Locs.svg',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/SAX_PLT_Locs.svg',
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ouw74ys3' /* SAX PLT */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                  lineHeight:
                                                                      1.2,
                                                                  useGoogleFonts:
                                                                      !FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMediumIsCustom,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 6.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 17.0, 5.0),
                                                  child: Transform.rotate(
                                                    angle:
                                                        270.0 * (math.pi / 180),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/Icono_Flecha_Locs.svg',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/SAX_CINE.svg',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'uhhxo5m1' /* SAX CINE */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    lineHeight:
                                                                        1.2,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 6.0)),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Icono_Flecha_Locs.svg',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/2C_Locs.svg',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '7qrpuwqw' /* 2C */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    lineHeight:
                                                                        1.2,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 6.0)),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Icono_Flecha_Locs.svg',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/4c_Locs.svg',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'jczv5ezj' /* 4C */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    lineHeight:
                                                                        1.2,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 6.0)),
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Icono_Flecha_Locs.svg',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/3C_Locs.svg',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'uud14dzi' /* 3C */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    lineHeight:
                                                                        1.2,
                                                                    useGoogleFonts:
                                                                        !FlutterFlowTheme.of(context)
                                                                            .bodyMediumIsCustom,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 6.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.titleModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content: 'CINE PILOTO',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF3B3B3B),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            border: Border.all(
                                              color: Color(0xFF535353),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 6.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Pilot_Icon_Locs.svg',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '5wnpcele' /* PILOTOS */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    fontSize:
                                                                        13.5,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                  ),
                                                            ),
                                                            RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '33o0qcss' /* 2C P  */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontSize:
                                                                              13.5,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w800,
                                                                        ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'kw9ldjtj' /* 1 slice */,
                                                                    ),
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          13.5,
                                                                    ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                            RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'b8zw7e1o' /* 4C P  */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontSize:
                                                                              13.5,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w800,
                                                                        ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '39l9r9vc' /* 1 slice */,
                                                                    ),
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          13.5,
                                                                    ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                            RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '7nc7r94d' /* EJE CORTO P  */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontSize:
                                                                              13.5,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w800,
                                                                        ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '05sc7nzw' /* 4-6 slices */,
                                                                    ),
                                                                    style:
                                                                        TextStyle(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          13.5,
                                                                    ),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          !FlutterFlowTheme.of(context)
                                                                              .bodyMediumIsCustom,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'eumnsw79' /* Baja resolución espacial y tem... */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 6.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(),
                                                    child: Stack(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      children: [
                                                        Container(
                                                          width: 177.0,
                                                          height: 177.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child:
                                                              FlutterFlowVideoPlayer(
                                                            path:
                                                                'assets/videos/Video_1_Locs.mp4',
                                                            videoType:
                                                                VideoType.asset,
                                                            width: 177.0,
                                                            height: 177.0,
                                                            autoPlay: true,
                                                            looping: true,
                                                            showControls: false,
                                                            allowFullScreen:
                                                                false,
                                                            allowPlaybackSpeedMenu:
                                                                false,
                                                            pauseOnNavigate:
                                                                false,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'mrpu3db1' /* CINE 2C PILOTO */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    fontSize:
                                                                        13.5,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
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
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.titleModel7,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content:
                                                  'IMAGENES PILOTO EN TELEDIÁSTOLE',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Img_3_Locs.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.titleModel8,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content:
                                                  '¿PORQUÉ  PROGRAMAR EN DIÁSTOLE?',
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel13,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'En sístole la base del corazón asciende y el ventrículo se acorta longitudinalmente.',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel14,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Este desplazamiento es el fundamento para el cálculo del Strain longitudinal.',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel15,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Si los cortes no se programan en diástole, se subestima la longitud ventricular y se obtienen menos cortes de los necesarios, comprometiendo la cobertura completa de ambos ventrículos.',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.swipeContinueModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwipeContinueWidget(),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
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
                                            model: _model.titleModel9,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content: 'PILOTO 2 CÁMARAS VI',
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel16,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content: '2C PRIMER PILOTO',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel17,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Se obtiene exclusivamente desde el axial estricto.',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel18,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'La línea de planificación debe:',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel7,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content:
                                                'Pasar por la aurícula izquierda (AI) y el ápex del ventrículo izquierdo (VI) (flechas rojas)',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel8,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content:
                                                'Dejar por la derecha a la aorta torácica descendente (flecha amarilla)',
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            border: Border.all(
                                              color: Color(0xFF535353),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/Img_4_Locs.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                      SvgPicture.asset(
                                                        'assets/images/flechas_1.svg',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF040404),
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/Img_5_6_y_8_Locs.png',
                                                    fit: BoxFit.scaleDown,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.titleModel10,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content: 'PILOTO 4 CÁMARAS VI',
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel19,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Se obtiene desde el piloto anterior 2C P',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel20,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Se debe programar en diástole (ventrículo izquierdo más grande).',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel21,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'La línea de planificación debe:',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel9,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content:
                                                'Pasar por la aurícula izquierda (AI) y el ápex del ventrículo izquierdo (VI) → flechas amarillas',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subSentenceModel10,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SubSentenceWidget(
                                            content:
                                                'Todos los pilotos realizan en apnea espiratoria',
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            border: Border.all(
                                              color: Color(0xFF535353),
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Transform.scale(
                                                  scaleX: 1.1,
                                                  scaleY: 1.1,
                                                  origin: Offset(-5.0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                                6.0),
                                                        bottomLeft:
                                                            Radius.circular(
                                                                6.0),
                                                      ),
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/Img_5_6_y_8_Locs.png',
                                                          fit: BoxFit.none,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/linea_1.svg',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      20.0,
                                                                      45.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/flechas_2.svg',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF040404),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(6.0),
                                                      bottomRight:
                                                          Radius.circular(6.0),
                                                    ),
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/Img_7_Locs.png',
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.swipeContinueModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwipeContinueWidget(),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                          border: Border.all(
                                            color: Color(0xFF535353),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/Img_5_6_y_8_Locs.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                    SvgPicture.asset(
                                                      'assets/images/linea_2.svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/Img_9_Locs.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                    SvgPicture.asset(
                                                      'assets/images/linea_2.svg',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: FlutterFlowVideoPlayer(
                                          path:
                                              'assets/videos/Video_2_Locs.mp4',
                                          videoType: VideoType.asset,
                                          height: 135.0,
                                          autoPlay: true,
                                          looping: true,
                                          showControls: false,
                                          allowFullScreen: false,
                                          allowPlaybackSpeedMenu: false,
                                          pauseOnNavigate: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.titleModel11,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content: 'PILOTO EJE CORTO',
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel22,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Usando el 2C y 4C piloto se obtiene el EC Piloto',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel23,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Se adquieren 4–6 cortes con grosor de 7–8 mm, dejando un gap adecuado para cubrir desde la aurícula izquierda hasta la zona media del ventrículo izquierdo',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel24,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Importante: incluir la válvula aórtica',
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel25,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Luego de este piloto EC (SAX) se hace el CINE 3C definitivo (sin necesidad de realizar un piloto 3C)',
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.titleModel12,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: TitleWidget(
                                              content: 'USO DE REFERENCIAS',
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.sentenceModel26,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: SentenceWidget(
                                            content:
                                                'Para planear todos los ejes largos del VI siempre se usan dos referencias:',
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
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'l0d553w0' /* 1. */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.roboto(
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
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'up53b8e6' /* Otro eje largo (distinto al qu... */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      lineHeight: 1.25,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ],
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
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'rldhwii3' /* 2. */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.roboto(
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
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '95ovebgu' /* El eje corto para definir la o... */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      lineHeight: 1.25,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumIsCustom,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: wrapWithModel(
                                      model: _model.swipeContinueModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwipeContinueWidget(),
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 80.0,
                                    decoration: BoxDecoration(),
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
