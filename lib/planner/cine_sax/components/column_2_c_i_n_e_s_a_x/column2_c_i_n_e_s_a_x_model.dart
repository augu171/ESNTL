import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import 'column2_c_i_n_e_s_a_x_widget.dart' show Column2CINESAXWidget;
import 'package:flutter/material.dart';

class Column2CINESAXModel extends FlutterFlowModel<Column2CINESAXWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Title component.
  late TitleModel titleModel;
  // Model for Sentence component.
  late SentenceModel sentenceModel1;
  // Model for Sentence component.
  late SentenceModel sentenceModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel3;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel;

  @override
  void initState(BuildContext context) {
    titleModel = createModel(context, () => TitleModel());
    sentenceModel1 = createModel(context, () => SentenceModel());
    sentenceModel2 = createModel(context, () => SentenceModel());
    sentenceModel3 = createModel(context, () => SentenceModel());
    swipeContinueModel = createModel(context, () => SwipeContinueModel());
  }

  @override
  void dispose() {
    titleModel.dispose();
    sentenceModel1.dispose();
    sentenceModel2.dispose();
    sentenceModel3.dispose();
    swipeContinueModel.dispose();
  }
}
