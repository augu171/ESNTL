import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/favorite_item/favorite_item_widget.dart';
import 'cmr_favorite_card_widget.dart' show CmrFavoriteCardWidget;
import 'package:flutter/material.dart';

class CmrFavoriteCardModel extends FlutterFlowModel<CmrFavoriteCardWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Models for favorite_Item dynamic component.
  late FlutterFlowDynamicModels<FavoriteItemModel> favoriteItemModels;

  @override
  void initState(BuildContext context) {
    favoriteItemModels = FlutterFlowDynamicModels(() => FavoriteItemModel());
  }

  @override
  void dispose() {
    favoriteItemModels.dispose();
  }
}
