import '/esntl/esencial/components/chapter_card/chapter_card_widget.dart';
import '/esntl/esencial/components/progress_module/progress_module_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/white_components/app_bar_white/app_bar_white_widget.dart';
import '/global_components/white_components/navbar_white/navbar_white_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'esencial_model.dart';
export 'esencial_model.dart';

class EsencialWidget extends StatefulWidget {
  const EsencialWidget({super.key});

  static String routeName = 'Esencial';
  static String routePath = '/esencial';

  @override
  State<EsencialWidget> createState() => _EsencialWidgetState();
}

class _EsencialWidgetState extends State<EsencialWidget> {
  late EsencialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EsencialModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F1EF),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.appBarWhiteModel,
                        updateCallback: () => safeSetState(() {}),
                        child: AppBarWhiteWidget(
                          label: 'Esencial',
                          itemId: 'ESNTL',
                          screenName: 'Esencial',
                          itemRef:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-k0itw5/assets/4mzk1lv1al0d/ESSENTIAL_Nar_Home.svg',
                          titleText: 'ESENCIAL',
                        ),
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
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: SvgPicture.asset(
                                            'assets/images/Icon_ESENTIAL.svg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'i099yp3j' /* MÓDULO 1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 12.0,
                                                    letterSpacing: 1.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmallIsCustom,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dbyrz85m' /* FUNDAMENTOS DE RMC */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeFamily,
                                                    color: Color(0xFF111111),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    lineHeight: 1.3,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeIsCustom,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2e1hxnea' /* Física, secuencias y planos */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: Color(0xFF6B6B70),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ].divide(SizedBox(width: 24.0)),
                                    ),
                                    wrapWithModel(
                                      model: _model.progressModuleModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ProgressModuleWidget(
                                        percentProgress: functions
                                            .getModuleProgressPercentage(
                                                FFAppState().allChapters,
                                                <String>['1.1', '1.2', '1.3']
                                                    .toList()),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'ze6gur2s' /* CAPÍTULOS DEL MÓDULO 1 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.chapterCardModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ChapterCardWidget(
                                            description: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.1')
                                                .chapterDescription,
                                            idNum: '1.1',
                                            progress: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.1')
                                                .chapterCompletionPercentage,
                                            title: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.1')
                                                .chapterName,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.chapterCardModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ChapterCardWidget(
                                            description: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.2')
                                                .chapterDescription,
                                            idNum: '1.2',
                                            progress: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.2')
                                                .chapterCompletionPercentage,
                                            title: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.2')
                                                .chapterName,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.chapterCardModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ChapterCardWidget(
                                            description: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.3')
                                                .chapterDescription,
                                            idNum: '1.3',
                                            progress: functions
                                                .getModuleProgressPercentage(
                                                    FFAppState().allChapters,
                                                    <String>[
                                                      '1.3.1',
                                                      '1.3.2',
                                                      '1.3.3'
                                                    ].toList()),
                                            title: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.3')
                                                .chapterName,
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.swipeContinueModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SwipeContinueWidget(),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: SvgPicture.asset(
                                              'assets/images/Icon_ESENTIAL.svg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'x9eoe9c6' /* MÓDULO 1 */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmallFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 12.0,
                                                    letterSpacing: 1.0,
                                                    fontWeight: FontWeight.bold,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmallIsCustom,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'twa00f6l' /* FUNDAMENTOS DE RMC */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeFamily,
                                                    color: Color(0xFF111111),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w900,
                                                    lineHeight: 1.3,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .titleLargeIsCustom,
                                                  ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4x4uohl6' /* Planos y anatomia cardíaca */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: Color(0xFF6B6B70),
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts:
                                                        !FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumIsCustom,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ].divide(SizedBox(width: 24.0)),
                                    ),
                                    wrapWithModel(
                                      model: _model.progressModuleModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ProgressModuleWidget(
                                        percentProgress: functions
                                            .getModuleProgressPercentage(
                                                FFAppState().allChapters,
                                                <String>[
                                                  '1.3.1',
                                                  '1.3.2',
                                                  '1.3.3'
                                                ].toList()),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'j9vmaych' /* CAPÍTULOS DEL MÓDULO 1 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmallFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .labelSmallIsCustom,
                                            ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.chapterCardModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ChapterCardWidget(
                                            description: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.3.1')
                                                .chapterDescription,
                                            idNum: '1.3.1',
                                            progress: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.3.1')
                                                .chapterCompletionPercentage,
                                            title: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.3.1')
                                                .chapterName,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.chapterCardModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ChapterCardWidget(
                                            description: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.3.2')
                                                .chapterDescription,
                                            idNum: '1.3.2',
                                            progress: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.3.2')
                                                .chapterCompletionPercentage,
                                            title: functions
                                                .getChapterByNumber(
                                                    (FFAppState()
                                                                .allChapters
                                                                .toList()
                                                                .map<ChapterStructStruct?>(
                                                                    ChapterStructStruct
                                                                        .maybeFromMap)
                                                                .toList()
                                                            as Iterable<
                                                                ChapterStructStruct?>)
                                                        .withoutNulls
                                                        .toList(),
                                                    '1.3.2')
                                                .chapterName,
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                                TopografiaWidget.routeName);
                                          },
                                          child: wrapWithModel(
                                            model: _model.chapterCardModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ChapterCardWidget(
                                              description: functions
                                                  .getChapterByNumber(
                                                      (FFAppState()
                                                                  .allChapters
                                                                  .toList()
                                                                  .map<ChapterStructStruct?>(
                                                                      ChapterStructStruct
                                                                          .maybeFromMap)
                                                                  .toList()
                                                              as Iterable<
                                                                  ChapterStructStruct?>)
                                                          .withoutNulls
                                                          .toList(),
                                                      '1.3.3')
                                                  .chapterDescription,
                                              idNum: '1.3.3',
                                              progress: functions
                                                  .getChapterByNumber(
                                                      (FFAppState()
                                                                  .allChapters
                                                                  .toList()
                                                                  .map<ChapterStructStruct?>(
                                                                      ChapterStructStruct
                                                                          .maybeFromMap)
                                                                  .toList()
                                                              as Iterable<
                                                                  ChapterStructStruct?>)
                                                          .withoutNulls
                                                          .toList(),
                                                      '1.3.3')
                                                  .chapterCompletionPercentage,
                                              title: functions
                                                  .getChapterByNumber(
                                                      (FFAppState()
                                                                  .allChapters
                                                                  .toList()
                                                                  .map<ChapterStructStruct?>(
                                                                      ChapterStructStruct
                                                                          .maybeFromMap)
                                                                  .toList()
                                                              as Iterable<
                                                                  ChapterStructStruct?>)
                                                          .withoutNulls
                                                          .toList(),
                                                      '1.3.3')
                                                  .chapterName,
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 12.0)),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: wrapWithModel(
                                        model: _model.swipeContinueModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: SwipeContinueWidget(),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 12.0)),
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
                      model: _model.navbarWhiteModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavbarWhiteWidget(
                        pButtonPressed: 2,
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
