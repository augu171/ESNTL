import '/esntl/topografia/components/item_image_topogra/item_image_topogra_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import '/global_components/white_components/sentence_white/sentence_white_widget.dart';
import '/global_components/white_components/sub_sentence_white/sub_sentence_white_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'column5_topog_model.dart';
export 'column5_topog_model.dart';

class Column5TopogWidget extends StatefulWidget {
  const Column5TopogWidget({super.key});

  @override
  State<Column5TopogWidget> createState() => _Column5TopogWidgetState();
}

class _Column5TopogWidgetState extends State<Column5TopogWidget> {
  late Column5TopogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Column5TopogModel());
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
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: wrapWithModel(
                  model: _model.titleModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TitleWidget(
                    content: 'CAPAS DEL MIOCARDIO',
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel1,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1:
                      'El músculo cardíaco se organiza en tres capas concéntricas:',
                  content2: ' ',
                  contentBold1: ' ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.subSentenceWhiteModel1,
                updateCallback: () => safeSetState(() {}),
                child: SubSentenceWhiteWidget(
                  content1: '',
                  pointColor: Colors.black,
                  content2:
                      'capa Interna, en contacto con la cavidad ventricular',
                  content1Color: Colors.black,
                  contentBold1: 'Endocardio: ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.subSentenceWhiteModel2,
                updateCallback: () => safeSetState(() {}),
                child: SubSentenceWhiteWidget(
                  content1: '',
                  pointColor: Colors.black,
                  content2:
                      'capa media, donde se concentran las fibras contractiles',
                  content1Color: Colors.black,
                  contentBold1: 'Mesocardio: ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.subSentenceWhiteModel3,
                updateCallback: () => safeSetState(() {}),
                child: SubSentenceWhiteWidget(
                  content1: '',
                  pointColor: Colors.black,
                  content2: 'capa externa, próxima al pericardio',
                  content1Color: Colors.black,
                  contentBold1: 'Subepicardio: ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.sentenceWhiteModel2,
                updateCallback: () => safeSetState(() {}),
                child: SentenceWhiteWidget(
                  content1: 'En RMC, la ',
                  content2: ' ',
                  contentBold1:
                      ' localización del daño en una capa específica ayuda a diferenciar patologías:',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.subSentenceWhiteModel4,
                updateCallback: () => safeSetState(() {}),
                child: SubSentenceWhiteWidget(
                  content1:
                      'El subendocardio es típicamente afectado en el infarto (patrón isquémico)',
                  pointColor: Colors.black,
                  content2: ' ',
                  content1Color: Colors.black,
                  contentBold1: ' ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.subSentenceWhiteModel5,
                updateCallback: () => safeSetState(() {}),
                child: SubSentenceWhiteWidget(
                  content1:
                      'El mesocardio es común en miocardiopatía no isquémica',
                  pointColor: Colors.black,
                  content2: ' ',
                  content1Color: Colors.black,
                  contentBold1: ' ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
              wrapWithModel(
                model: _model.subSentenceWhiteModel6,
                updateCallback: () => safeSetState(() {}),
                child: SubSentenceWhiteWidget(
                  content1:
                      'La afectación subepicárdica es característica de la miocarditis',
                  pointColor: Colors.black,
                  content2: ' ',
                  content1Color: Colors.black,
                  contentBold1: ' ',
                  contentBold2: ' ',
                  contentBold3: ' ',
                  content3: ' ',
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SvgPicture.asset(
                    'assets/images/Img6_Topografia.svg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          Container(
                            width: 18.0,
                            height: 18.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF62C2C),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F1EF),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '0zfa6c7g' /* ENDOCARDIO */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFF161616),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.2,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(width: 4.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          Container(
                            width: 18.0,
                            height: 18.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFBBF24),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F1EF),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          's05irrbg' /* MESOCARDIO */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFF161616),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.2,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(width: 4.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          Container(
                            width: 18.0,
                            height: 18.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF2563EB),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          Container(
                            width: 12.0,
                            height: 12.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F1EF),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'iowjmpdy' /* SUBEPICARDIO */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Color(0xFF161616),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.2,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ].divide(SizedBox(width: 4.0)),
                  ),
                ].divide(SizedBox(height: 15.0)),
              ),
            ].divide(SizedBox(width: 16.0)),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'jx6zxcv2' /* Tipos de realce tardio según p... */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  color: Colors.black,
                  fontSize: 13.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 124.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondary,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 124.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          fit: BoxFit.scaleDown,
                          image: Image.asset(
                            'assets/images/img_P5_Topografia_.png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.35, 0.4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/flechas_P5_Topografia.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7.0),
                          bottomLeft: Radius.circular(7.0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7.0),
                                  bottomLeft: Radius.circular(7.0),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  if (_model.buttonPressed == 0)
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          bottomLeft: Radius.circular(8.0),
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.5),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'pudhvgxb' /* CARDIOPATIA
ISQUÉMICA
IAM sube... */
                                            ,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.5,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w800,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  Align(
                                    alignment: AlignmentDirectional(0.9, -0.9),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.buttonPressed =
                                            _model.buttonPressed == 0 ? 3 : 0;
                                        safeSetState(() {});
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/icon_exchange.svg',
                                          fit: BoxFit.cover,
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
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7.0),
                                  bottomLeft: Radius.circular(7.0),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  if (_model.buttonPressed == 1)
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.3),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'd6tblab4' /* MIOCARDIOPATIA ARRITMOGÉNICA I... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.5,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w800,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  Align(
                                    alignment: AlignmentDirectional(0.9, -0.9),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.buttonPressed =
                                            _model.buttonPressed == 1 ? 3 : 1;
                                        safeSetState(() {});
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/icon_exchange.svg',
                                          fit: BoxFit.cover,
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
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7.0),
                                  bottomLeft: Radius.circular(7.0),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  if (_model.buttonPressed == 2)
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(9.0),
                                          bottomRight: Radius.circular(9.0),
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.2),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'xovypu30' /* MIOCARDITIS AGUDA
Fibrosis 
su... */
                                            ,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                fontSize: 10.5,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w800,
                                                useGoogleFonts:
                                                    !FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMediumIsCustom,
                                              ),
                                        ),
                                      ),
                                    ),
                                  Align(
                                    alignment: AlignmentDirectional(0.9, -0.9),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.buttonPressed =
                                            _model.buttonPressed == 2 ? 3 : 2;
                                        safeSetState(() {});
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/icon_exchange.svg',
                                          fit: BoxFit.cover,
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
                padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.itemImageTopograModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: ItemImageTopograWidget(
                          colorPoint: FlutterFlowTheme.of(context).primary,
                          text: 'Subendocárdico',
                          textColor: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.itemImageTopograModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: ItemImageTopograWidget(
                            colorPoint: Color(0xFF5B2DB7),
                            text: 'Mesocárdico',
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.itemImageTopograModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: ItemImageTopograWidget(
                            colorPoint: Color(0xFF18E5EE),
                            text: 'Subepicárdico',
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0.0, -2.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemImageTopograModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: ItemImageTopograWidget(
                            colorPoint: Color(0xFFFF0000),
                            text: 'Punto de inserción',
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemImageTopograModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: ItemImageTopograWidget(
                            colorPoint: Color(0xFFF1F1EF),
                            text: '',
                            textColor: Color(0xFFF1F1EF),
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemImageTopograModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: ItemImageTopograWidget(
                            colorPoint: Color(0xFFF1F1EF),
                            text: '',
                            textColor: Color(0xFFF1F1EF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0.0, -4.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemImageTopograModel7,
                          updateCallback: () => safeSetState(() {}),
                          child: ItemImageTopograWidget(
                            colorPoint: Color(0xFF00FF55),
                            text: 'Transmural',
                            textColor: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemImageTopograModel8,
                          updateCallback: () => safeSetState(() {}),
                          child: ItemImageTopograWidget(
                            colorPoint: Color(0xFFF1F1EF),
                            text: '',
                            textColor: Color(0xFFF1F1EF),
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.itemImageTopograModel9,
                          updateCallback: () => safeSetState(() {}),
                          child: ItemImageTopograWidget(
                            colorPoint: Color(0xFFF1F1EF),
                            text: '',
                            textColor: Color(0xFFF1F1EF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              wrapWithModel(
                model: _model.swipeContinueModel,
                updateCallback: () => safeSetState(() {}),
                child: SwipeContinueWidget(),
              ),
            ],
          ),
          Container(
            width: 100.0,
            height: 60.0,
            decoration: BoxDecoration(),
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
