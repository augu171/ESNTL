import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/favorite_tem_2/favorite_tem2_widget.dart';
import 'favorite_dialog_widget.dart' show FavoriteDialogWidget;
import 'package:flutter/material.dart';

class FavoriteDialogModel extends FlutterFlowModel<FavoriteDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for favorite_tem_2 dynamic component.
  late FlutterFlowDynamicModels<FavoriteTem2Model> favoriteTem2Models;

  @override
  void initState(BuildContext context) {
    favoriteTem2Models = FlutterFlowDynamicModels(() => FavoriteTem2Model());
  }

  @override
  void dispose() {
    favoriteTem2Models.dispose();
  }
}
