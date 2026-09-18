import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import 'column9_topog_widget.dart' show Column9TopogWidget;
import 'package:flutter/material.dart';

class Column9TopogModel extends FlutterFlowModel<Column9TopogWidget> {
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
