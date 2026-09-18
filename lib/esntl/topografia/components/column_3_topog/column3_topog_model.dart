import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import '/global_components/white_components/sentence_white/sentence_white_widget.dart';
import 'column3_topog_widget.dart' show Column3TopogWidget;
import 'package:flutter/material.dart';

class Column3TopogModel extends FlutterFlowModel<Column3TopogWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Title component.
  late TitleModel titleModel;
  // Model for SentenceWhite component.
  late SentenceWhiteModel sentenceWhiteModel1;
  // Model for SentenceWhite component.
  late SentenceWhiteModel sentenceWhiteModel2;
  // Model for SentenceWhite component.
  late SentenceWhiteModel sentenceWhiteModel3;
  // Model for SentenceWhite component.
  late SentenceWhiteModel sentenceWhiteModel4;
  // Model for SentenceWhite component.
  late SentenceWhiteModel sentenceWhiteModel5;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel;

  @override
  void initState(BuildContext context) {
    titleModel = createModel(context, () => TitleModel());
    sentenceWhiteModel1 = createModel(context, () => SentenceWhiteModel());
    sentenceWhiteModel2 = createModel(context, () => SentenceWhiteModel());
    sentenceWhiteModel3 = createModel(context, () => SentenceWhiteModel());
    sentenceWhiteModel4 = createModel(context, () => SentenceWhiteModel());
    sentenceWhiteModel5 = createModel(context, () => SentenceWhiteModel());
    swipeContinueModel = createModel(context, () => SwipeContinueModel());
  }

  @override
  void dispose() {
    titleModel.dispose();
    sentenceWhiteModel1.dispose();
    sentenceWhiteModel2.dispose();
    sentenceWhiteModel3.dispose();
    sentenceWhiteModel4.dispose();
    sentenceWhiteModel5.dispose();
    swipeContinueModel.dispose();
  }
}
