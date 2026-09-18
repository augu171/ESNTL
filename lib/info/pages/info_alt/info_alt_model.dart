import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar_simple/app_bar_simple_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/global_components/sentence/sentence_widget.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title_simple/title_simple_widget.dart';
import '/info/components/frame_text/frame_text_widget.dart';
import '/info/components/item_list/item_list_widget.dart';
import '/info/components/text_body/text_body_widget.dart';
import '/info/components/title_info/title_info_widget.dart';
import 'info_alt_widget.dart' show InfoAltWidget;
import 'package:flutter/material.dart';

class InfoAltModel extends FlutterFlowModel<InfoAltWidget> {
  ///  Local state fields for this page.

  int dotValue = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Gradient_Background component.
  late GradientBackgroundModel gradientBackgroundModel;
  // Model for appBarSimple component.
  late AppBarSimpleModel appBarSimpleModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for TitleInfo component.
  late TitleInfoModel titleInfoModel1;
  // Model for TextBody component.
  late TextBodyModel textBodyModel1;
  // Model for TitleInfo component.
  late TitleInfoModel titleInfoModel2;
  // Model for FrameText component.
  late FrameTextModel frameTextModel1;
  // Model for TitleInfo component.
  late TitleInfoModel titleInfoModel3;
  // Model for ItemList component.
  late ItemListModel itemListModel1;
  // Model for ItemList component.
  late ItemListModel itemListModel2;
  // Model for ItemList component.
  late ItemListModel itemListModel3;
  // Model for ItemList component.
  late ItemListModel itemListModel4;
  // Model for ItemList component.
  late ItemListModel itemListModel5;
  // Model for ItemList component.
  late ItemListModel itemListModel6;
  // Model for ItemList component.
  late ItemListModel itemListModel7;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel1;
  // Model for TitleInfo component.
  late TitleInfoModel titleInfoModel4;
  // Model for Sentence component.
  late SentenceModel sentenceModel1;
  // Model for Sentence component.
  late SentenceModel sentenceModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel3;
  // Model for Sentence component.
  late SentenceModel sentenceModel4;
  // Model for Sentence component.
  late SentenceModel sentenceModel5;
  // Model for Sentence component.
  late SentenceModel sentenceModel6;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel2;
  // Model for TitleInfo component.
  late TitleInfoModel titleInfoModel5;
  // Model for TextBody component.
  late TextBodyModel textBodyModel2;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel3;
  // Model for TitleInfo component.
  late TitleInfoModel titleInfoModel6;
  // Model for TextBody component.
  late TextBodyModel textBodyModel3;
  // Model for FrameText component.
  late FrameTextModel frameTextModel2;
  // Model for Title_Simple component.
  late TitleSimpleModel titleSimpleModel1;
  // Model for Sentence component.
  late SentenceModel sentenceModel7;
  // Model for Sentence component.
  late SentenceModel sentenceModel8;
  // Model for Sentence component.
  late SentenceModel sentenceModel9;
  // Model for FrameText component.
  late FrameTextModel frameTextModel3;
  // Model for Title_Simple component.
  late TitleSimpleModel titleSimpleModel2;
  // Model for Sentence component.
  late SentenceModel sentenceModel10;
  // Model for Sentence component.
  late SentenceModel sentenceModel11;
  // Model for Sentence component.
  late SentenceModel sentenceModel12;
  // Model for FrameText component.
  late FrameTextModel frameTextModel4;
  // Model for Title_Simple component.
  late TitleSimpleModel titleSimpleModel3;
  // Model for Sentence component.
  late SentenceModel sentenceModel13;
  // Model for Sentence component.
  late SentenceModel sentenceModel14;
  // Model for Sentence component.
  late SentenceModel sentenceModel15;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel4;
  // Model for TitleInfo component.
  late TitleInfoModel titleInfoModel7;
  // Model for Sentence component.
  late SentenceModel sentenceModel16;
  // Model for Sentence component.
  late SentenceModel sentenceModel17;
  // Model for Sentence component.
  late SentenceModel sentenceModel18;
  // Model for Sentence component.
  late SentenceModel sentenceModel19;
  // Model for Sentence component.
  late SentenceModel sentenceModel20;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel5;
  // Model for TitleInfo component.
  late TitleInfoModel titleInfoModel8;
  // Model for Sentence component.
  late SentenceModel sentenceModel21;
  // Model for Sentence component.
  late SentenceModel sentenceModel22;
  // Model for Sentence component.
  late SentenceModel sentenceModel23;
  // Model for Sentence component.
  late SentenceModel sentenceModel24;
  // Model for Sentence component.
  late SentenceModel sentenceModel25;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel6;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    appBarSimpleModel = createModel(context, () => AppBarSimpleModel());
    titleInfoModel1 = createModel(context, () => TitleInfoModel());
    textBodyModel1 = createModel(context, () => TextBodyModel());
    titleInfoModel2 = createModel(context, () => TitleInfoModel());
    frameTextModel1 = createModel(context, () => FrameTextModel());
    titleInfoModel3 = createModel(context, () => TitleInfoModel());
    itemListModel1 = createModel(context, () => ItemListModel());
    itemListModel2 = createModel(context, () => ItemListModel());
    itemListModel3 = createModel(context, () => ItemListModel());
    itemListModel4 = createModel(context, () => ItemListModel());
    itemListModel5 = createModel(context, () => ItemListModel());
    itemListModel6 = createModel(context, () => ItemListModel());
    itemListModel7 = createModel(context, () => ItemListModel());
    swipeContinueModel1 = createModel(context, () => SwipeContinueModel());
    titleInfoModel4 = createModel(context, () => TitleInfoModel());
    sentenceModel1 = createModel(context, () => SentenceModel());
    sentenceModel2 = createModel(context, () => SentenceModel());
    sentenceModel3 = createModel(context, () => SentenceModel());
    sentenceModel4 = createModel(context, () => SentenceModel());
    sentenceModel5 = createModel(context, () => SentenceModel());
    sentenceModel6 = createModel(context, () => SentenceModel());
    swipeContinueModel2 = createModel(context, () => SwipeContinueModel());
    titleInfoModel5 = createModel(context, () => TitleInfoModel());
    textBodyModel2 = createModel(context, () => TextBodyModel());
    swipeContinueModel3 = createModel(context, () => SwipeContinueModel());
    titleInfoModel6 = createModel(context, () => TitleInfoModel());
    textBodyModel3 = createModel(context, () => TextBodyModel());
    frameTextModel2 = createModel(context, () => FrameTextModel());
    titleSimpleModel1 = createModel(context, () => TitleSimpleModel());
    sentenceModel7 = createModel(context, () => SentenceModel());
    sentenceModel8 = createModel(context, () => SentenceModel());
    sentenceModel9 = createModel(context, () => SentenceModel());
    frameTextModel3 = createModel(context, () => FrameTextModel());
    titleSimpleModel2 = createModel(context, () => TitleSimpleModel());
    sentenceModel10 = createModel(context, () => SentenceModel());
    sentenceModel11 = createModel(context, () => SentenceModel());
    sentenceModel12 = createModel(context, () => SentenceModel());
    frameTextModel4 = createModel(context, () => FrameTextModel());
    titleSimpleModel3 = createModel(context, () => TitleSimpleModel());
    sentenceModel13 = createModel(context, () => SentenceModel());
    sentenceModel14 = createModel(context, () => SentenceModel());
    sentenceModel15 = createModel(context, () => SentenceModel());
    swipeContinueModel4 = createModel(context, () => SwipeContinueModel());
    titleInfoModel7 = createModel(context, () => TitleInfoModel());
    sentenceModel16 = createModel(context, () => SentenceModel());
    sentenceModel17 = createModel(context, () => SentenceModel());
    sentenceModel18 = createModel(context, () => SentenceModel());
    sentenceModel19 = createModel(context, () => SentenceModel());
    sentenceModel20 = createModel(context, () => SentenceModel());
    swipeContinueModel5 = createModel(context, () => SwipeContinueModel());
    titleInfoModel8 = createModel(context, () => TitleInfoModel());
    sentenceModel21 = createModel(context, () => SentenceModel());
    sentenceModel22 = createModel(context, () => SentenceModel());
    sentenceModel23 = createModel(context, () => SentenceModel());
    sentenceModel24 = createModel(context, () => SentenceModel());
    sentenceModel25 = createModel(context, () => SentenceModel());
    swipeContinueModel6 = createModel(context, () => SwipeContinueModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    appBarSimpleModel.dispose();
    titleInfoModel1.dispose();
    textBodyModel1.dispose();
    titleInfoModel2.dispose();
    frameTextModel1.dispose();
    titleInfoModel3.dispose();
    itemListModel1.dispose();
    itemListModel2.dispose();
    itemListModel3.dispose();
    itemListModel4.dispose();
    itemListModel5.dispose();
    itemListModel6.dispose();
    itemListModel7.dispose();
    swipeContinueModel1.dispose();
    titleInfoModel4.dispose();
    sentenceModel1.dispose();
    sentenceModel2.dispose();
    sentenceModel3.dispose();
    sentenceModel4.dispose();
    sentenceModel5.dispose();
    sentenceModel6.dispose();
    swipeContinueModel2.dispose();
    titleInfoModel5.dispose();
    textBodyModel2.dispose();
    swipeContinueModel3.dispose();
    titleInfoModel6.dispose();
    textBodyModel3.dispose();
    frameTextModel2.dispose();
    titleSimpleModel1.dispose();
    sentenceModel7.dispose();
    sentenceModel8.dispose();
    sentenceModel9.dispose();
    frameTextModel3.dispose();
    titleSimpleModel2.dispose();
    sentenceModel10.dispose();
    sentenceModel11.dispose();
    sentenceModel12.dispose();
    frameTextModel4.dispose();
    titleSimpleModel3.dispose();
    sentenceModel13.dispose();
    sentenceModel14.dispose();
    sentenceModel15.dispose();
    swipeContinueModel4.dispose();
    titleInfoModel7.dispose();
    sentenceModel16.dispose();
    sentenceModel17.dispose();
    sentenceModel18.dispose();
    sentenceModel19.dispose();
    sentenceModel20.dispose();
    swipeContinueModel5.dispose();
    titleInfoModel8.dispose();
    sentenceModel21.dispose();
    sentenceModel22.dispose();
    sentenceModel23.dispose();
    sentenceModel24.dispose();
    sentenceModel25.dispose();
    swipeContinueModel6.dispose();
    navbarModel.dispose();
  }
}
