import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import 'column4_v_i_widget.dart' show Column4VIWidget;
import 'package:flutter/material.dart';

class Column4VIModel extends FlutterFlowModel<Column4VIWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Title component.
  late TitleModel titleModel1;
  // Model for Sentence component.
  late SentenceModel sentenceModel1;
  // Model for Title component.
  late TitleModel titleModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel3;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel;

  @override
  void initState(BuildContext context) {
    titleModel1 = createModel(context, () => TitleModel());
    sentenceModel1 = createModel(context, () => SentenceModel());
    titleModel2 = createModel(context, () => TitleModel());
    sentenceModel2 = createModel(context, () => SentenceModel());
    sentenceModel3 = createModel(context, () => SentenceModel());
    swipeContinueModel = createModel(context, () => SwipeContinueModel());
  }

  @override
  void dispose() {
    titleModel1.dispose();
    sentenceModel1.dispose();
    titleModel2.dispose();
    sentenceModel2.dispose();
    sentenceModel3.dispose();
    swipeContinueModel.dispose();
  }
}
