import '/esntl/topografia/components/column_1_topog/column1_topog_widget.dart';
import '/esntl/topografia/components/column_2_topog/column2_topog_widget.dart';
import '/esntl/topografia/components/column_3_topog/column3_topog_widget.dart';
import '/esntl/topografia/components/column_4_topog/column4_topog_widget.dart';
import '/esntl/topografia/components/column_5_topog/column5_topog_widget.dart';
import '/esntl/topografia/components/column_6_topog/column6_topog_widget.dart';
import '/esntl/topografia/components/column_7_topog/column7_topog_widget.dart';
import '/esntl/topografia/components/column_8_topog/column8_topog_widget.dart';
import '/esntl/topografia/components/column_9_topog/column9_topog_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/white_components/app_bar_white/app_bar_white_widget.dart';
import '/global_components/white_components/navbar_white/navbar_white_widget.dart';
import 'topografia_widget.dart' show TopografiaWidget;
import 'package:flutter/material.dart';

class TopografiaModel extends FlutterFlowModel<TopografiaWidget> {
  ///  Local state fields for this page.

  int dotValue = 0;

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
  // Model for Column_1_Topog component.
  late Column1TopogModel column1TopogModel;
  // Model for Column_2_Topog component.
  late Column2TopogModel column2TopogModel;
  // Model for Column_3_Topog component.
  late Column3TopogModel column3TopogModel;
  // Model for Column_4_Topog component.
  late Column4TopogModel column4TopogModel;
  // Model for Column_5_Topog component.
  late Column5TopogModel column5TopogModel;
  // Model for Column_6_Topog component.
  late Column6TopogModel column6TopogModel;
  // Model for Column_7_Topog component.
  late Column7TopogModel column7TopogModel;
  // Model for Column_8_Topog component.
  late Column8TopogModel column8TopogModel;
  // Model for Column_9_Topog component.
  late Column9TopogModel column9TopogModel;
  // Model for NavbarWhite component.
  late NavbarWhiteModel navbarWhiteModel;

  @override
  void initState(BuildContext context) {
    appBarWhiteModel = createModel(context, () => AppBarWhiteModel());
    column1TopogModel = createModel(context, () => Column1TopogModel());
    column2TopogModel = createModel(context, () => Column2TopogModel());
    column3TopogModel = createModel(context, () => Column3TopogModel());
    column4TopogModel = createModel(context, () => Column4TopogModel());
    column5TopogModel = createModel(context, () => Column5TopogModel());
    column6TopogModel = createModel(context, () => Column6TopogModel());
    column7TopogModel = createModel(context, () => Column7TopogModel());
    column8TopogModel = createModel(context, () => Column8TopogModel());
    column9TopogModel = createModel(context, () => Column9TopogModel());
    navbarWhiteModel = createModel(context, () => NavbarWhiteModel());
  }

  @override
  void dispose() {
    appBarWhiteModel.dispose();
    column1TopogModel.dispose();
    column2TopogModel.dispose();
    column3TopogModel.dispose();
    column4TopogModel.dispose();
    column5TopogModel.dispose();
    column6TopogModel.dispose();
    column7TopogModel.dispose();
    column8TopogModel.dispose();
    column9TopogModel.dispose();
    navbarWhiteModel.dispose();
  }
}
