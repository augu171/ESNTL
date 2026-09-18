import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/planner/vi/components/column_1_v_i/column1_v_i_widget.dart';
import '/planner/vi/components/column_2_v_i/column2_v_i_widget.dart';
import '/planner/vi/components/column_3_v_i/column3_v_i_widget.dart';
import '/planner/vi/components/column_4_v_i/column4_v_i_widget.dart';
import '/planner/vi/components/column_5_v_i/column5_v_i_widget.dart';
import 'vi_widget.dart' show ViWidget;
import 'package:flutter/material.dart';

class ViModel extends FlutterFlowModel<ViWidget> {
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
  // Model for Column_1_VI component.
  late Column1VIModel column1VIModel;
  // Model for Column_2_VI component.
  late Column2VIModel column2VIModel;
  // Model for Column_3_VI component.
  late Column3VIModel column3VIModel;
  // Model for Column_4_VI component.
  late Column4VIModel column4VIModel;
  // Model for Column_5_VI component.
  late Column5VIModel column5VIModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    appBarModel = createModel(context, () => AppBarModel());
    column1VIModel = createModel(context, () => Column1VIModel());
    column2VIModel = createModel(context, () => Column2VIModel());
    column3VIModel = createModel(context, () => Column3VIModel());
    column4VIModel = createModel(context, () => Column4VIModel());
    column5VIModel = createModel(context, () => Column5VIModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    appBarModel.dispose();
    column1VIModel.dispose();
    column2VIModel.dispose();
    column3VIModel.dispose();
    column4VIModel.dispose();
    column5VIModel.dispose();
    navbarModel.dispose();
  }
}
