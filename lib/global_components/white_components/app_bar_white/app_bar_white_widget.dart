import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_bar_white_model.dart';
export 'app_bar_white_model.dart';

class AppBarWhiteWidget extends StatefulWidget {
  const AppBarWhiteWidget({
    super.key,
    String? label,
    required this.itemId,
    required this.screenName,
    required this.itemRef,
    required this.titleText,
  }) : this.label = label ?? '';

  /// texto mostrado en pantalla
  final String label;

  /// Identificador único
  final String? itemId;

  /// nombre exacto figurado en flutterflow de la pantalla
  final String? screenName;

  /// icono al que apunta
  final String? itemRef;

  final String? titleText;

  @override
  State<AppBarWhiteWidget> createState() => _AppBarWhiteWidgetState();
}

class _AppBarWhiteWidgetState extends State<AppBarWhiteWidget> {
  late AppBarWhiteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppBarWhiteModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.safePop();
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFF808080),
            size: 24.0,
          ),
        ),
        Container(
          height: 44.0,
          decoration: BoxDecoration(
            color: Color(0xFFDDDDDD),
            borderRadius: BorderRadius.circular(12.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(11.0, 0.0, 8.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -0.15),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (FFAppState()
                          .favoritesList
                          .contains(FavoriteItemStruct(
                            id: widget.itemId,
                            label: widget.label,
                            screenName: widget.screenName,
                            itemRef: widget.itemRef,
                          ))) {
                        FFAppState().removeFromFavoritesList(FavoriteItemStruct(
                          id: widget.itemId,
                          label: widget.label,
                          screenName: widget.screenName,
                          itemRef: widget.itemRef,
                        ));
                        safeSetState(() {});
                      } else {
                        FFAppState().addToFavoritesList(FavoriteItemStruct(
                          id: widget.itemId,
                          label: widget.label,
                          screenName: widget.screenName,
                          itemRef: widget.itemRef,
                        ));
                        safeSetState(() {});
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          Icon(
                            Icons.star_outline_rounded,
                            color: Color(0xFF6C6C6C),
                            size: 30.0,
                          ),
                          if (!(FFAppState()
                                  .favoritesList
                                  .contains(FavoriteItemStruct(
                                    id: widget.itemId,
                                    label: widget.label,
                                    screenName: widget.screenName,
                                    itemRef: widget.itemRef,
                                  ))
                              ? false
                              : true))
                            Icon(
                              Icons.star_rounded,
                              color: Color(0xFFFF6200),
                              size: 30.0,
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    valueOrDefault<String>(
                      widget.titleText,
                      'TITLE TEXT',
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          font: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .fontStyle,
                          ),
                          color: Color(0xFF4D4D4D),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .fontStyle,
                          lineHeight: 1.2,
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: Icon(
                        FFIcons.kemergencyHome,
                        color: FlutterFlowTheme.of(context).customColor14,
                        size: 24.0,
                      ),
                    ),
                    Icon(
                      FFIcons.ksavedSearch,
                      color: FlutterFlowTheme.of(context).customColor14,
                      size: 24.0,
                    ),
                  ],
                ),
              ].divide(SizedBox(width: 6.0)),
            ),
          ),
        ),
      ].divide(SizedBox(height: 12.0)),
    );
  }
}
