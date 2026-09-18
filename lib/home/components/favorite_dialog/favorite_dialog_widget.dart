import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/favorite_tem_2/favorite_tem2_widget.dart';
import '/home/components/favorite_alt_dialog/favorite_alt_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'favorite_dialog_model.dart';
export 'favorite_dialog_model.dart';

class FavoriteDialogWidget extends StatefulWidget {
  const FavoriteDialogWidget({super.key});

  @override
  State<FavoriteDialogWidget> createState() => _FavoriteDialogWidgetState();
}

class _FavoriteDialogWidgetState extends State<FavoriteDialogWidget> {
  late FavoriteDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoriteDialogModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 353.0,
        height: 278.46,
        decoration: BoxDecoration(
          color: Color(0xFF262626),
          borderRadius: BorderRadius.circular(6.0),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Color(0xFF535353),
            width: 0.5,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        FFLocalizations.of(context).getText(
                          'hy5zcp1g' /* PANTALLAS FAVORITAS */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: Colors.white,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              lineHeight: 1.4,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/Collapse_Icon.svg',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final favItems = FFAppState()
                            .favoritesList
                            .toList()
                            .take(15)
                            .toList();

                        return GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 12.0,
                            childAspectRatio: 1.0,
                          ),
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: favItems.length,
                          itemBuilder: (context, favItemsIndex) {
                            final favItemsItem = favItems[favItemsIndex];
                            return Builder(
                              builder: (context) => InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: FavoriteAltDialogWidget(
                                          id: favItemsItem.id,
                                          label: favItemsItem.label,
                                          screenName: favItemsItem.screenName,
                                          itemRef: favItemsItem.itemRef,
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.favoriteTem2Models.getModel(
                                    favItemsItem.id,
                                    favItemsIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: FavoriteTem2Widget(
                                    key: Key(
                                      'Key4iq_${favItemsItem.id}',
                                    ),
                                    imagePath: favItemsItem.itemRef,
                                    textLabel: favItemsItem.id,
                                    screenName: favItemsItem.screenName,
                                    textLabel2: favItemsItem.label,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
