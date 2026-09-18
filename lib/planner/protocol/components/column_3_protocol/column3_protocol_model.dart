import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/sub_sentence/sub_sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import 'column3_protocol_widget.dart' show Column3ProtocolWidget;
import 'package:flutter/material.dart';

class Column3ProtocolModel extends FlutterFlowModel<Column3ProtocolWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Title component.
  late TitleModel titleModel1;
  // Model for Title component.
  late TitleModel titleModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel1;
  // Model for Sentence component.
  late SentenceModel sentenceModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel3;
  // Model for Sentence component.
  late SentenceModel sentenceModel4;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel1;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel5;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel;

  @override
  void initState(BuildContext context) {
    titleModel1 = createModel(context, () => TitleModel());
    titleModel2 = createModel(context, () => TitleModel());
    sentenceModel1 = createModel(context, () => SentenceModel());
    sentenceModel2 = createModel(context, () => SentenceModel());
    sentenceModel3 = createModel(context, () => SentenceModel());
    sentenceModel4 = createModel(context, () => SentenceModel());
    subSentenceModel1 = createModel(context, () => SubSentenceModel());
    subSentenceModel2 = createModel(context, () => SubSentenceModel());
    sentenceModel5 = createModel(context, () => SentenceModel());
    swipeContinueModel = createModel(context, () => SwipeContinueModel());
  }

  @override
  void dispose() {
    titleModel1.dispose();
    titleModel2.dispose();
    sentenceModel1.dispose();
    sentenceModel2.dispose();
    sentenceModel3.dispose();
    sentenceModel4.dispose();
    subSentenceModel1.dispose();
    subSentenceModel2.dispose();
    sentenceModel5.dispose();
    swipeContinueModel.dispose();
  }
}
