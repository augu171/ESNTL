import '/esntl/topografia/components/item_image_topogra/item_image_topogra_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/swipe_continue/swipe_continue_widget.dart';
import '/global_components/title/title_widget.dart';
import '/global_components/white_components/sentence_white/sentence_white_widget.dart';
import '/global_components/white_components/sub_sentence_white/sub_sentence_white_widget.dart';
import 'column5_topog_widget.dart' show Column5TopogWidget;
import 'package:flutter/material.dart';

class Column5TopogModel extends FlutterFlowModel<Column5TopogWidget> {
  ///  Local state fields for this component.
  /// Botón de la carta presionada para ver su descripción
  int buttonPressed = 3;

  ///  State fields for stateful widgets in this component.

  // Model for Title component.
  late TitleModel titleModel;
  // Model for SentenceWhite component.
  late SentenceWhiteModel sentenceWhiteModel1;
  // Model for SubSentenceWhite component.
  late SubSentenceWhiteModel subSentenceWhiteModel1;
  // Model for SubSentenceWhite component.
  late SubSentenceWhiteModel subSentenceWhiteModel2;
  // Model for SubSentenceWhite component.
  late SubSentenceWhiteModel subSentenceWhiteModel3;
  // Model for SentenceWhite component.
  late SentenceWhiteModel sentenceWhiteModel2;
  // Model for SubSentenceWhite component.
  late SubSentenceWhiteModel subSentenceWhiteModel4;
  // Model for SubSentenceWhite component.
  late SubSentenceWhiteModel subSentenceWhiteModel5;
  // Model for SubSentenceWhite component.
  late SubSentenceWhiteModel subSentenceWhiteModel6;
  // Model for item_Image_Topogra component.
  late ItemImageTopograModel itemImageTopograModel1;
  // Model for item_Image_Topogra component.
  late ItemImageTopograModel itemImageTopograModel2;
  // Model for item_Image_Topogra component.
  late ItemImageTopograModel itemImageTopograModel3;
  // Model for item_Image_Topogra component.
  late ItemImageTopograModel itemImageTopograModel4;
  // Model for item_Image_Topogra component.
  late ItemImageTopograModel itemImageTopograModel5;
  // Model for item_Image_Topogra component.
  late ItemImageTopograModel itemImageTopograModel6;
  // Model for item_Image_Topogra component.
  late ItemImageTopograModel itemImageTopograModel7;
  // Model for item_Image_Topogra component.
  late ItemImageTopograModel itemImageTopograModel8;
  // Model for item_Image_Topogra component.
  late ItemImageTopograModel itemImageTopograModel9;
  // Model for Swipe_Continue component.
  late SwipeContinueModel swipeContinueModel;

  @override
  void initState(BuildContext context) {
    titleModel = createModel(context, () => TitleModel());
    sentenceWhiteModel1 = createModel(context, () => SentenceWhiteModel());
    subSentenceWhiteModel1 =
        createModel(context, () => SubSentenceWhiteModel());
    subSentenceWhiteModel2 =
        createModel(context, () => SubSentenceWhiteModel());
    subSentenceWhiteModel3 =
        createModel(context, () => SubSentenceWhiteModel());
    sentenceWhiteModel2 = createModel(context, () => SentenceWhiteModel());
    subSentenceWhiteModel4 =
        createModel(context, () => SubSentenceWhiteModel());
    subSentenceWhiteModel5 =
        createModel(context, () => SubSentenceWhiteModel());
    subSentenceWhiteModel6 =
        createModel(context, () => SubSentenceWhiteModel());
    itemImageTopograModel1 =
        createModel(context, () => ItemImageTopograModel());
    itemImageTopograModel2 =
        createModel(context, () => ItemImageTopograModel());
    itemImageTopograModel3 =
        createModel(context, () => ItemImageTopograModel());
    itemImageTopograModel4 =
        createModel(context, () => ItemImageTopograModel());
    itemImageTopograModel5 =
        createModel(context, () => ItemImageTopograModel());
    itemImageTopograModel6 =
        createModel(context, () => ItemImageTopograModel());
    itemImageTopograModel7 =
        createModel(context, () => ItemImageTopograModel());
    itemImageTopograModel8 =
        createModel(context, () => ItemImageTopograModel());
    itemImageTopograModel9 =
        createModel(context, () => ItemImageTopograModel());
    swipeContinueModel = createModel(context, () => SwipeContinueModel());
  }

  @override
  void dispose() {
    titleModel.dispose();
    sentenceWhiteModel1.dispose();
    subSentenceWhiteModel1.dispose();
    subSentenceWhiteModel2.dispose();
    subSentenceWhiteModel3.dispose();
    sentenceWhiteModel2.dispose();
    subSentenceWhiteModel4.dispose();
    subSentenceWhiteModel5.dispose();
    subSentenceWhiteModel6.dispose();
    itemImageTopograModel1.dispose();
    itemImageTopograModel2.dispose();
    itemImageTopograModel3.dispose();
    itemImageTopograModel4.dispose();
    itemImageTopograModel5.dispose();
    itemImageTopograModel6.dispose();
    itemImageTopograModel7.dispose();
    itemImageTopograModel8.dispose();
    itemImageTopograModel9.dispose();
    swipeContinueModel.dispose();
  }
}
