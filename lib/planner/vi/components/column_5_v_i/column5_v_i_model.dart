import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import 'column5_v_i_widget.dart' show Column5VIWidget;
import 'package:flutter/material.dart';

class Column5VIModel extends FlutterFlowModel<Column5VIWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel;

  @override
  void initState(BuildContext context) {
    swipeContinueModel = createModel(context, () => SwipeContinueModel());
  }

  @override
  void dispose() {
    swipeContinueModel.dispose();
  }
}
