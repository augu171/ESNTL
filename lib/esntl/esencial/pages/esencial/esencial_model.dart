import '/esntl/esencial/components/chapter_card/chapter_card_widget.dart';
import '/esntl/esencial/components/progress_module/progress_module_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/white_components/app_bar_white/app_bar_white_widget.dart';
import '/global_components/white_components/navbar_white/navbar_white_widget.dart';
import '/index.dart';
import 'esencial_widget.dart' show EsencialWidget;
import 'package:flutter/material.dart';

class EsencialModel extends FlutterFlowModel<EsencialWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appBarWhite component.
  late AppBarWhiteModel appBarWhiteModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for progress_Module component.
  late ProgressModuleModel progressModuleModel1;
  // Model for Chapter_Card component.
  late ChapterCardModel chapterCardModel1;
  // Model for Chapter_Card component.
  late ChapterCardModel chapterCardModel2;
  // Model for Chapter_Card component.
  late ChapterCardModel chapterCardModel3;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel1;
  // Model for progress_Module component.
  late ProgressModuleModel progressModuleModel2;
  // Model for Chapter_Card component.
  late ChapterCardModel chapterCardModel4;
  // Model for Chapter_Card component.
  late ChapterCardModel chapterCardModel5;
  // Model for Chapter_Card component.
  late ChapterCardModel chapterCardModel6;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel2;
  // Model for NavbarWhite component.
  late NavbarWhiteModel navbarWhiteModel;

  @override
  void initState(BuildContext context) {
    appBarWhiteModel = createModel(context, () => AppBarWhiteModel());
    progressModuleModel1 = createModel(context, () => ProgressModuleModel());
    chapterCardModel1 = createModel(context, () => ChapterCardModel());
    chapterCardModel2 = createModel(context, () => ChapterCardModel());
    chapterCardModel3 = createModel(context, () => ChapterCardModel());
    swipeContinueModel1 = createModel(context, () => SwipeContinueModel());
    progressModuleModel2 = createModel(context, () => ProgressModuleModel());
    chapterCardModel4 = createModel(context, () => ChapterCardModel());
    chapterCardModel5 = createModel(context, () => ChapterCardModel());
    chapterCardModel6 = createModel(context, () => ChapterCardModel());
    swipeContinueModel2 = createModel(context, () => SwipeContinueModel());
    navbarWhiteModel = createModel(context, () => NavbarWhiteModel());
  }

  @override
  void dispose() {
    appBarWhiteModel.dispose();
    progressModuleModel1.dispose();
    chapterCardModel1.dispose();
    chapterCardModel2.dispose();
    chapterCardModel3.dispose();
    swipeContinueModel1.dispose();
    progressModuleModel2.dispose();
    chapterCardModel4.dispose();
    chapterCardModel5.dispose();
    chapterCardModel6.dispose();
    swipeContinueModel2.dispose();
    navbarWhiteModel.dispose();
  }
}
