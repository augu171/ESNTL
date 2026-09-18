import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/planner/cine_sax/components/column_1_c_i_n_e_s_a_x/column1_c_i_n_e_s_a_x_widget.dart';
import '/planner/cine_sax/components/column_2_c_i_n_e_s_a_x/column2_c_i_n_e_s_a_x_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'cine_sax_model.dart';
export 'cine_sax_model.dart';

class CineSaxWidget extends StatefulWidget {
  const CineSaxWidget({
    super.key,
    int? dotParameter,
  }) : this.dotParameter = dotParameter ?? 0;

  final int dotParameter;

  static String routeName = 'CineSax';
  static String routePath = '/cineSax';

  @override
  State<CineSaxWidget> createState() => _CineSaxWidgetState();
}

class _CineSaxWidgetState extends State<CineSaxWidget> {
  late CineSaxModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CineSaxModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.dotValue = widget.dotParameter;
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
                          label: 'Cine Sax',
                          itemId: 'Cine Sax',
                          screenName: 'CineSax',
                          itemRef:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-k0itw5/assets/api5ccrbyeot/SAX_Planner.svg',
                          titleText: 'CINE EJE CORTO',
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
                            model: _model.column1CINESAXModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column1CINESAXWidget(),
                          ),
                          wrapWithModel(
                            model: _model.column2CINESAXModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column2CINESAXWidget(),
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
