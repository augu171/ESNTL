import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/sub_sentence/sub_sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import 'column2_v_i_widget.dart' show Column2VIWidget;
import 'package:flutter/material.dart';

class Column2VIModel extends FlutterFlowModel<Column2VIWidget> {
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
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel1;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel2;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel3;
  // Model for Sentence component.
  late SentenceModel sentenceModel4;
  // Model for Sentence component.
  late SentenceModel sentenceModel5;
  // Model for Sentence component.
  late SentenceModel sentenceModel6;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel;

  @override
  void initState(BuildContext context) {
    titleModel1 = createModel(context, () => TitleModel());
    sentenceModel1 = createModel(context, () => SentenceModel());
    titleModel2 = createModel(context, () => TitleModel());
    sentenceModel2 = createModel(context, () => SentenceModel());
    sentenceModel3 = createModel(context, () => SentenceModel());
    subSentenceModel1 = createModel(context, () => SubSentenceModel());
    subSentenceModel2 = createModel(context, () => SubSentenceModel());
    subSentenceModel3 = createModel(context, () => SubSentenceModel());
    sentenceModel4 = createModel(context, () => SentenceModel());
    sentenceModel5 = createModel(context, () => SentenceModel());
    sentenceModel6 = createModel(context, () => SentenceModel());
    swipeContinueModel = createModel(context, () => SwipeContinueModel());
  }

  @override
  void dispose() {
    titleModel1.dispose();
    sentenceModel1.dispose();
    titleModel2.dispose();
    sentenceModel2.dispose();
    sentenceModel3.dispose();
    subSentenceModel1.dispose();
    subSentenceModel2.dispose();
    subSentenceModel3.dispose();
    sentenceModel4.dispose();
    sentenceModel5.dispose();
    sentenceModel6.dispose();
    swipeContinueModel.dispose();
  }
}
