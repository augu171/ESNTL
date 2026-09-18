import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'scroll_view_with_scroll_to_bottom_model.dart';
export 'scroll_view_with_scroll_to_bottom_model.dart';

class ScrollViewWithScrollToBottomWidget extends StatefulWidget {
  const ScrollViewWithScrollToBottomWidget({super.key});

  @override
  State<ScrollViewWithScrollToBottomWidget> createState() =>
      _ScrollViewWithScrollToBottomWidgetState();
}

class _ScrollViewWithScrollToBottomWidgetState
    extends State<ScrollViewWithScrollToBottomWidget> {
  late ScrollViewWithScrollToBottomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrollViewWithScrollToBottomModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.keyboard_arrow_up_outlined,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
            Text(
              FFLocalizations.of(context).getText(
                'nzufa2vs' /* DESLIZA HACIA ARRIBA */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    fontSize: 9.0,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
