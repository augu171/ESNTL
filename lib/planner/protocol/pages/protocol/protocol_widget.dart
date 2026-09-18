import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/planner/protocol/components/column_1_protocol/column1_protocol_widget.dart';
import '/planner/protocol/components/column_2_protocol/column2_protocol_widget.dart';
import '/planner/protocol/components/column_3_protocol/column3_protocol_widget.dart';
import 'package:flutter/material.dart';
import 'protocol_model.dart';
export 'protocol_model.dart';

class ProtocolWidget extends StatefulWidget {
  const ProtocolWidget({super.key});

  static String routeName = 'Protocol';
  static String routePath = '/protocol';

  @override
  State<ProtocolWidget> createState() => _ProtocolWidgetState();
}

class _ProtocolWidgetState extends State<ProtocolWidget> {
  late ProtocolModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProtocolModel());
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
                          label: 'PROTOCOLS',
                          itemId: 'PROTOC',
                          screenName: 'Protocol',
                          itemRef:
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-k0itw5/assets/0hnlzy6f7s5m/Protocol_Planner.svg',
                          titleText: 'PROTOCOLS',
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
                            model: _model.column1ProtocolModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column1ProtocolWidget(),
                          ),
                          wrapWithModel(
                            model: _model.column2ProtocolModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column2ProtocolWidget(),
                          ),
                          wrapWithModel(
                            model: _model.column3ProtocolModel,
                            updateCallback: () => safeSetState(() {}),
                            child: Column3ProtocolWidget(),
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
