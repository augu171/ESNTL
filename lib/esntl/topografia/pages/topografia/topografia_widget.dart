import '/esntl/topografia/components/column_1_topog/column1_topog_widget.dart';
import '/esntl/topografia/components/column_2_topog/column2_topog_widget.dart';
import '/esntl/topografia/components/column_3_topog/column3_topog_widget.dart';
import '/esntl/topografia/components/column_4_topog/column4_topog_widget.dart';
import '/esntl/topografia/components/column_5_topog/column5_topog_widget.dart';
import '/esntl/topografia/components/column_6_topog/column6_topog_widget.dart';
import '/esntl/topografia/components/column_7_topog/column7_topog_widget.dart';
import '/esntl/topografia/components/column_8_topog/column8_topog_widget.dart';
import '/esntl/topografia/components/column_9_topog/column9_topog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/white_components/app_bar_white/app_bar_white_widget.dart';
import '/global_components/white_components/navbar_white/navbar_white_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'topografia_model.dart';
export 'topografia_model.dart';

class TopografiaWidget extends StatefulWidget {
  const TopografiaWidget({super.key});

  static String routeName = 'Topografia';
  static String routePath = '/topografia';

  @override
  State<TopografiaWidget> createState() => _TopografiaWidgetState();
}

class _TopografiaWidgetState extends State<TopografiaWidget> {
  late TopografiaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopografiaModel());
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
                          label: 'Topografia',
                          itemId: 'Topog...',
                          screenName: 'Topografia',
                          itemRef:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-k0itw5/assets/dnmpr7ggzplo/Img1_Corazon_Topografia.svg',
                          titleText: 'TOPOGRAFÍA',
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
                                      : Color(0xFFDDDDDD),
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
                                      : Color(0xFFDDDDDD),
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
                                      : Color(0xFFDDDDDD),
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
                                      : Color(0xFFDDDDDD),
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
                                      : Color(0xFFDDDDDD),
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
                                      : Color(0xFFDDDDDD),
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
                                  _model.dotValue == 6
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0xFFDDDDDD),
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
                                  _model.dotValue == 7
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0xFFDDDDDD),
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
                                  _model.dotValue == 8
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0xFFDDDDDD),
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
                      child: Container(
                        width: double.infinity,
                        height: 500.0,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 40.0),
                              child: PageView(
                                controller: _model.pageViewController ??=
                                    PageController(initialPage: 0),
                                onPageChanged: (_) async {
                                  _model.dotValue = _model.pageViewCurrentIndex;
                                  safeSetState(() {});
                                },
                                scrollDirection: Axis.horizontal,
                                children: [
                                  wrapWithModel(
                                    model: _model.column1TopogModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Column1TopogWidget(),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: wrapWithModel(
                                      model: _model.column2TopogModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: Column2TopogWidget(),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.column3TopogModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Column3TopogWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.column4TopogModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Column4TopogWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.column5TopogModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Column5TopogWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.column6TopogModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Column6TopogWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.column7TopogModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Column7TopogWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.column8TopogModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Column8TopogWidget(),
                                  ),
                                  wrapWithModel(
                                    model: _model.column9TopogModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: Column9TopogWidget(),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child:
                                    smooth_page_indicator.SmoothPageIndicator(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 9,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) async {
                                    await _model.pageViewController!
                                        .animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                    safeSetState(() {});
                                  },
                                  effect: smooth_page_indicator.SlideEffect(
                                    spacing: 8.0,
                                    radius: 8.0,
                                    dotWidth: 8.0,
                                    dotHeight: 8.0,
                                    dotColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    activeDotColor:
                                        FlutterFlowTheme.of(context).primary,
                                    paintStyle: PaintingStyle.fill,
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
