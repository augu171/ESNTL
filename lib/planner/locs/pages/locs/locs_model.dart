import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/sub_sentence/sub_sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import 'locs_widget.dart' show LocsWidget;
import 'package:flutter/material.dart';

class LocsModel extends FlutterFlowModel<LocsWidget> {
  ///  Local state fields for this page.
  /// En que pagina del pageviews se encuentra
  int dotValue = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Gradient_Background component.
  late GradientBackgroundModel gradientBackgroundModel;
  // Model for appBar component.
  late AppBarModel appBarModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel1;
  // Model for Title component.
  late TitleModel titleModel3;
  // Model for Sentence component.
  late SentenceModel sentenceModel5;
  // Model for Sentence component.
  late SentenceModel sentenceModel6;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel1;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel7;
  // Model for Sentence component.
  late SentenceModel sentenceModel8;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel2;
  // Model for Title component.
  late TitleModel titleModel4;
  // Model for Sentence component.
  late SentenceModel sentenceModel9;
  // Model for Sentence component.
  late SentenceModel sentenceModel10;
  // Model for Sentence component.
  late SentenceModel sentenceModel11;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel3;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel4;
  // Model for Sentence component.
  late SentenceModel sentenceModel12;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel5;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel6;
  // Model for Title component.
  late TitleModel titleModel5;
  // Model for Title component.
  late TitleModel titleModel6;
  // Model for Title component.
  late TitleModel titleModel7;
  // Model for Title component.
  late TitleModel titleModel8;
  // Model for Sentence component.
  late SentenceModel sentenceModel13;
  // Model for Sentence component.
  late SentenceModel sentenceModel14;
  // Model for Sentence component.
  late SentenceModel sentenceModel15;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel3;
  // Model for Title component.
  late TitleModel titleModel9;
  // Model for Sentence component.
  late SentenceModel sentenceModel16;
  // Model for Sentence component.
  late SentenceModel sentenceModel17;
  // Model for Sentence component.
  late SentenceModel sentenceModel18;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel7;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel8;
  // Model for Title component.
  late TitleModel titleModel10;
  // Model for Sentence component.
  late SentenceModel sentenceModel19;
  // Model for Sentence component.
  late SentenceModel sentenceModel20;
  // Model for Sentence component.
  late SentenceModel sentenceModel21;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel9;
  // Model for Sub_Sentence component.
  late SubSentenceModel subSentenceModel10;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel4;
  // Model for Title component.
  late TitleModel titleModel11;
  // Model for Sentence component.
  late SentenceModel sentenceModel22;
  // Model for Sentence component.
  late SentenceModel sentenceModel23;
  // Model for Sentence component.
  late SentenceModel sentenceModel24;
  // Model for Sentence component.
  late SentenceModel sentenceModel25;
  // Model for Title component.
  late TitleModel titleModel12;
  // Model for Sentence component.
  late SentenceModel sentenceModel26;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel5;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    appBarModel = createModel(context, () => AppBarModel());
    titleModel1 = createModel(context, () => TitleModel());
    titleModel2 = createModel(context, () => TitleModel());
    sentenceModel1 = createModel(context, () => SentenceModel());
    sentenceModel2 = createModel(context, () => SentenceModel());
    sentenceModel3 = createModel(context, () => SentenceModel());
    sentenceModel4 = createModel(context, () => SentenceModel());
    swipeContinueModel1 = createModel(context, () => SwipeContinueModel());
    titleModel3 = createModel(context, () => TitleModel());
    sentenceModel5 = createModel(context, () => SentenceModel());
    sentenceModel6 = createModel(context, () => SentenceModel());
    subSentenceModel1 = createModel(context, () => SubSentenceModel());
    subSentenceModel2 = createModel(context, () => SubSentenceModel());
    sentenceModel7 = createModel(context, () => SentenceModel());
    sentenceModel8 = createModel(context, () => SentenceModel());
    swipeContinueModel2 = createModel(context, () => SwipeContinueModel());
    titleModel4 = createModel(context, () => TitleModel());
    sentenceModel9 = createModel(context, () => SentenceModel());
    sentenceModel10 = createModel(context, () => SentenceModel());
    sentenceModel11 = createModel(context, () => SentenceModel());
    subSentenceModel3 = createModel(context, () => SubSentenceModel());
    subSentenceModel4 = createModel(context, () => SubSentenceModel());
    sentenceModel12 = createModel(context, () => SentenceModel());
    subSentenceModel5 = createModel(context, () => SubSentenceModel());
    subSentenceModel6 = createModel(context, () => SubSentenceModel());
    titleModel5 = createModel(context, () => TitleModel());
    titleModel6 = createModel(context, () => TitleModel());
    titleModel7 = createModel(context, () => TitleModel());
    titleModel8 = createModel(context, () => TitleModel());
    sentenceModel13 = createModel(context, () => SentenceModel());
    sentenceModel14 = createModel(context, () => SentenceModel());
    sentenceModel15 = createModel(context, () => SentenceModel());
    swipeContinueModel3 = createModel(context, () => SwipeContinueModel());
    titleModel9 = createModel(context, () => TitleModel());
    sentenceModel16 = createModel(context, () => SentenceModel());
    sentenceModel17 = createModel(context, () => SentenceModel());
    sentenceModel18 = createModel(context, () => SentenceModel());
    subSentenceModel7 = createModel(context, () => SubSentenceModel());
    subSentenceModel8 = createModel(context, () => SubSentenceModel());
    titleModel10 = createModel(context, () => TitleModel());
    sentenceModel19 = createModel(context, () => SentenceModel());
    sentenceModel20 = createModel(context, () => SentenceModel());
    sentenceModel21 = createModel(context, () => SentenceModel());
    subSentenceModel9 = createModel(context, () => SubSentenceModel());
    subSentenceModel10 = createModel(context, () => SubSentenceModel());
    swipeContinueModel4 = createModel(context, () => SwipeContinueModel());
    titleModel11 = createModel(context, () => TitleModel());
    sentenceModel22 = createModel(context, () => SentenceModel());
    sentenceModel23 = createModel(context, () => SentenceModel());
    sentenceModel24 = createModel(context, () => SentenceModel());
    sentenceModel25 = createModel(context, () => SentenceModel());
    titleModel12 = createModel(context, () => TitleModel());
    sentenceModel26 = createModel(context, () => SentenceModel());
    swipeContinueModel5 = createModel(context, () => SwipeContinueModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    appBarModel.dispose();
    titleModel1.dispose();
    titleModel2.dispose();
    sentenceModel1.dispose();
    sentenceModel2.dispose();
    sentenceModel3.dispose();
    sentenceModel4.dispose();
    swipeContinueModel1.dispose();
    titleModel3.dispose();
    sentenceModel5.dispose();
    sentenceModel6.dispose();
    subSentenceModel1.dispose();
    subSentenceModel2.dispose();
    sentenceModel7.dispose();
    sentenceModel8.dispose();
    swipeContinueModel2.dispose();
    titleModel4.dispose();
    sentenceModel9.dispose();
    sentenceModel10.dispose();
    sentenceModel11.dispose();
    subSentenceModel3.dispose();
    subSentenceModel4.dispose();
    sentenceModel12.dispose();
    subSentenceModel5.dispose();
    subSentenceModel6.dispose();
    titleModel5.dispose();
    titleModel6.dispose();
    titleModel7.dispose();
    titleModel8.dispose();
    sentenceModel13.dispose();
    sentenceModel14.dispose();
    sentenceModel15.dispose();
    swipeContinueModel3.dispose();
    titleModel9.dispose();
    sentenceModel16.dispose();
    sentenceModel17.dispose();
    sentenceModel18.dispose();
    subSentenceModel7.dispose();
    subSentenceModel8.dispose();
    titleModel10.dispose();
    sentenceModel19.dispose();
    sentenceModel20.dispose();
    sentenceModel21.dispose();
    subSentenceModel9.dispose();
    subSentenceModel10.dispose();
    swipeContinueModel4.dispose();
    titleModel11.dispose();
    sentenceModel22.dispose();
    sentenceModel23.dispose();
    sentenceModel24.dispose();
    sentenceModel25.dispose();
    titleModel12.dispose();
    sentenceModel26.dispose();
    swipeContinueModel5.dispose();
    navbarModel.dispose();
  }
}
