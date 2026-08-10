import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/cmr_favorite_card/cmr_favorite_card_widget.dart';
import '/home/components/cmr_pulse_card/cmr_pulse_card_widget.dart';
import 'home_column_widget.dart' show HomeColumnWidget;
import 'package:flutter/material.dart';

class HomeColumnModel extends FlutterFlowModel<HomeColumnWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CMR_PULSE_CARD component.
  late CmrPulseCardModel cmrPulseCardModel;
  // Model for CMR_FAVORITE_CARD component.
  late CmrFavoriteCardModel cmrFavoriteCardModel;

  @override
  void initState(BuildContext context) {
    cmrPulseCardModel = createModel(context, () => CmrPulseCardModel());
    cmrFavoriteCardModel = createModel(context, () => CmrFavoriteCardModel());
  }

  @override
  void dispose() {
    cmrPulseCardModel.dispose();
    cmrFavoriteCardModel.dispose();
  }
}
