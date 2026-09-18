import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/white_components/sentence_white/sentence_white_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'column1_topog_model.dart';
export 'column1_topog_model.dart';

class Column1TopogWidget extends StatefulWidget {
  const Column1TopogWidget({super.key});

  @override
  State<Column1TopogWidget> createState() => _Column1TopogWidgetState();
}

class _Column1TopogWidgetState extends State<Column1TopogWidget> {
  late Column1TopogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Column1TopogModel());
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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.sentenceWhiteModel1,
              updateCallback: () => safeSetState(() {}),
              child: SentenceWhiteWidget(
                content1: '',
                content2: ' ',
                contentBold1:
                    'El corazón tiene forma de pirámide invertida dentro del tórax',
                contentBold2: ' ',
                contentBold3: ' ',
                content3: ' ',
              ),
            ),
          ),
          wrapWithModel(
            model: _model.sentenceWhiteModel2,
            updateCallback: () => safeSetState(() {}),
            child: SentenceWhiteWidget(
              content1:
                  'Cada cara de esta pirámide se relaciona con una estructura anatómica',
              content2: ' ',
              contentBold1: ' ',
              contentBold2: ' ',
              contentBold3: ' ',
              content3: ' ',
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 3.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/Img1_Corazon_Topografia.svg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Piramid_1_Topografia.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 151.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/Img1_Corazon_Topografia.svg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-16.0, 16.0),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/Piramid_1-1_Topografia.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Piram2_Topografia.svg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.8, 0.95),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'wigc8345' /* POSTERIOR */,
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
                                            lineHeight: 1.25,
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
                          Expanded(
                            child: Transform.translate(
                              offset: Offset(39.0, 0.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Img1_Corazon_Topografia.svg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(-16.0, 16.0),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Piramid_1-1_Topografia.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            'assets/images/Piram3_Topografia.svg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.45, 0.95),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'gl3584uz' /* INFERIOR */,
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
                                              lineHeight: 1.25,
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
                    Container(
                      height: 151.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/Img1_Corazon_Topografia.svg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(-16.0, 16.0),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/Piramid_1-1_Topografia.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Piram4_Topografia.svg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.75, 0.95),
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'q29322b6' /* ANTERIOR */,
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
                                            lineHeight: 1.25,
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
                          Expanded(
                            child: Transform.translate(
                              offset: Offset(39.0, 0.0),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Img1_Corazon_Topografia.svg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset(-16.0, 16.0),
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Piramid_1-1_Topografia.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            'assets/images/Piram5_Topografia.svg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.45, 1.0),
                                    child: Transform.translate(
                                      offset: Offset(0.0, 6.0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '7flpkifq' /* LATERALES 
IZQ-DER */
                                            ,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Color(0xFF161616),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                lineHeight: 1.1,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
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
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
            ),
          ),
          wrapWithModel(
            model: _model.sentenceWhiteModel3,
            updateCallback: () => safeSetState(() {}),
            child: SentenceWhiteWidget(
              content1: '',
              content2: 'base, hacia venas pulmonares y esófago.',
              contentBold1: 'Posterior: ',
              contentBold2: ' ',
              contentBold3: ' ',
              content3: ' ',
            ),
          ),
          wrapWithModel(
            model: _model.sentenceWhiteModel4,
            updateCallback: () => safeSetState(() {}),
            child: SentenceWhiteWidget(
              content1: '',
              content2: 'apoyada en el diafragma',
              contentBold1: 'Inferior: ',
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
              content2: 'en contacto con el esternón',
              contentBold1: 'Anterior: ',
              contentBold2: ' ',
              contentBold3: ' ',
              content3: ' ',
            ),
          ),
          wrapWithModel(
            model: _model.sentenceWhiteModel6,
            updateCallback: () => safeSetState(() {}),
            child: SentenceWhiteWidget(
              content1: '',
              content2: 'orientadas hacia los pulmones (izquierda y derecha)',
              contentBold1: 'Laterales: ',
              contentBold2: ' ',
              contentBold3: ' ',
              content3: ' ',
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
