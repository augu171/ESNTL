import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import 'column1_c_i_n_e_s_a_x_widget.dart' show Column1CINESAXWidget;
import 'package:flutter/material.dart';

class Column1CINESAXModel extends FlutterFlowModel<Column1CINESAXWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Title component.
  late TitleModel titleModel1;
  // Model for Sentence component.
  late SentenceModel sentenceModel1;
  // Model for Sentence component.
  late SentenceModel sentenceModel2;
  // Model for Title component.
  late TitleModel titleModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel3;
  // Model for Sentence component.
  late SentenceModel sentenceModel4;
  // Model for Sentence component.
  late SentenceModel sentenceModel5;
  // Model for Sentence component.
  late SentenceModel sentenceModel6;
  // Model for Sentence component.
  late SentenceModel sentenceModel7;
  // Model for Sentence component.
  late SentenceModel sentenceModel8;
  // Model for Title component.
  late TitleModel titleModel3;
  // Model for Sentence component.
  late SentenceModel sentenceModel9;
  // Model for Sentence component.
  late SentenceModel sentenceModel10;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel;

  @override
  void initState(BuildContext context) {
    titleModel1 = createModel(context, () => TitleModel());
    sentenceModel1 = createModel(context, () => SentenceModel());
    sentenceModel2 = createModel(context, () => SentenceModel());
    titleModel2 = createModel(context, () => TitleModel());
    sentenceModel3 = createModel(context, () => SentenceModel());
    sentenceModel4 = createModel(context, () => SentenceModel());
    sentenceModel5 = createModel(context, () => SentenceModel());
    sentenceModel6 = createModel(context, () => SentenceModel());
    sentenceModel7 = createModel(context, () => SentenceModel());
    sentenceModel8 = createModel(context, () => SentenceModel());
    titleModel3 = createModel(context, () => TitleModel());
    sentenceModel9 = createModel(context, () => SentenceModel());
    sentenceModel10 = createModel(context, () => SentenceModel());
    swipeContinueModel = createModel(context, () => SwipeContinueModel());
  }

  @override
  void dispose() {
    titleModel1.dispose();
    sentenceModel1.dispose();
    sentenceModel2.dispose();
    titleModel2.dispose();
    sentenceModel3.dispose();
    sentenceModel4.dispose();
    sentenceModel5.dispose();
    sentenceModel6.dispose();
    sentenceModel7.dispose();
    sentenceModel8.dispose();
    titleModel3.dispose();
    sentenceModel9.dispose();
    sentenceModel10.dispose();
    swipeContinueModel.dispose();
  }
}
