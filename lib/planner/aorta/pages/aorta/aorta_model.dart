import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/sub_sentence/sub_sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import 'aorta_widget.dart' show AortaWidget;
import 'package:flutter/material.dart';

class AortaModel extends FlutterFlowModel<AortaWidget> {
  ///  Local state fields for this page.
  /// En que pagina del pageviews se encuentra
  int dotValue = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Gradient_Background component.
  late GradientBackgroundModel gradientBackgroundModel;
  // Model for appBar component.
  late AppBarModel appBarModel;
  // Model for Title component.
  late TitleModel titleModel1;
  // Model for Sentence component.
  late SentenceModel sentenceModel1;
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
  // Model for Title component.
  late TitleModel titleModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel6;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel4;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel5;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel6;
  // Model for Sentence component.
  late SentenceModel sentenceModel7;
  // Model for Title component.
  late TitleModel titleModel3;
  // Model for Title component.
  late TitleModel titleModel4;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    appBarModel = createModel(context, () => AppBarModel());
    titleModel1 = createModel(context, () => TitleModel());
    sentenceModel1 = createModel(context, () => SentenceModel());
    sentenceModel2 = createModel(context, () => SentenceModel());
    sentenceModel3 = createModel(context, () => SentenceModel());
    subSentenceModel1 = createModel(context, () => SubSentenceModel());
    subSentenceModel2 = createModel(context, () => SubSentenceModel());
    subSentenceModel3 = createModel(context, () => SubSentenceModel());
    sentenceModel4 = createModel(context, () => SentenceModel());
    sentenceModel5 = createModel(context, () => SentenceModel());
    titleModel2 = createModel(context, () => TitleModel());
    sentenceModel6 = createModel(context, () => SentenceModel());
    subSentenceModel4 = createModel(context, () => SubSentenceModel());
    subSentenceModel5 = createModel(context, () => SubSentenceModel());
    subSentenceModel6 = createModel(context, () => SubSentenceModel());
    sentenceModel7 = createModel(context, () => SentenceModel());
    titleModel3 = createModel(context, () => TitleModel());
    titleModel4 = createModel(context, () => TitleModel());
    swipeContinueModel = createModel(context, () => SwipeContinueModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    appBarModel.dispose();
    titleModel1.dispose();
    sentenceModel1.dispose();
    sentenceModel2.dispose();
    sentenceModel3.dispose();
    subSentenceModel1.dispose();
    subSentenceModel2.dispose();
    subSentenceModel3.dispose();
    sentenceModel4.dispose();
    sentenceModel5.dispose();
    titleModel2.dispose();
    sentenceModel6.dispose();
    subSentenceModel4.dispose();
    subSentenceModel5.dispose();
    subSentenceModel6.dispose();
    sentenceModel7.dispose();
    titleModel3.dispose();
    titleModel4.dispose();
    swipeContinueModel.dispose();
    navbarModel.dispose();
  }
}
