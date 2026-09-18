import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/favorite_item/favorite_item_widget.dart';
import 'favorite_alt_dialog_widget.dart' show FavoriteAltDialogWidget;
import 'package:flutter/material.dart';

class FavoriteAltDialogModel extends FlutterFlowModel<FavoriteAltDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for favorite_Item component.
  late FavoriteItemModel favoriteItemModel;

  @override
  void initState(BuildContext context) {
    favoriteItemModel = createModel(context, () => FavoriteItemModel());
  }

  @override
  void dispose() {
    favoriteItemModel.dispose();
  }
}
