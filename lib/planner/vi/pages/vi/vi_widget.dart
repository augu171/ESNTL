import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/planner/vi/components/column_1_v_i/column1_v_i_widget.dart';
import '/planner/vi/components/column_2_v_i/column2_v_i_widget.dart';
import '/planner/vi/components/column_3_v_i/column3_v_i_widget.dart';
import '/planner/vi/components/column_4_v_i/column4_v_i_widget.dart';
import '/planner/vi/components/column_5_v_i/column5_v_i_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'vi_model.dart';
export 'vi_model.dart';

class ViWidget extends StatefulWidget {
  const ViWidget({
    super.key,
    required this.dotParameter,
  });

  final int? dotParameter;

  static String routeName = 'VI';
  static String routePath = '/vi';

  @override
  State<ViWidget> createState() => _ViWidgetState();
}

class _ViWidgetState extends State<ViWidget> {
  late ViModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dotValue = widget.dotParameter!;
      safeSetState(() {});
      await _model.pageViewController?.animateToPage(
        widget.dotParameter!,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
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
                          label: 'VI',
                          itemId: 'VI',
                          screenName: 'VI',
                          itemRef:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-k0itw5/assets/7nwqbe27f8df/Views_Planner.svg',
                          titleText: () {
                            if (_model.dotValue == 0) {
                              return 'VI 3C';
                            } else if (_model.dotValue == 1) {
                              return 'VI 4C';
                            } else if (_model.dotValue == 2) {
                              return 'VI 2C';
                            } else if (_model.dotValue == 3) {
                              return 'TSVI';
                            } else if (_model.dotValue == 4) {
                              return 'VI EJES CORTOS';
                            } else {
                              return 'VI 3C';
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
                          wrapWithModel(
                            model: _model.column1VIModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column1VIWidget(),
                          ),
                          wrapWithModel(
                            model: _model.column2VIModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column2VIWidget(),
                          ),
                          wrapWithModel(
                            model: _model.column3VIModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column3VIWidget(),
                          ),
                          wrapWithModel(
                            model: _model.column4VIModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column4VIWidget(),
                          ),
                          wrapWithModel(
                            model: _model.column5VIModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column5VIWidget(),
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
