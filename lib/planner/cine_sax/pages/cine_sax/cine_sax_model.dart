import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/planner/cine_sax/components/column_1_c_i_n_e_s_a_x/column1_c_i_n_e_s_a_x_widget.dart';
import '/planner/cine_sax/components/column_2_c_i_n_e_s_a_x/column2_c_i_n_e_s_a_x_widget.dart';
import 'cine_sax_widget.dart' show CineSaxWidget;
import 'package:flutter/material.dart';

class CineSaxModel extends FlutterFlowModel<CineSaxWidget> {
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
  // Model for Column_1_CINESAX component.
  late Column1CINESAXModel column1CINESAXModel;
  // Model for Column_2_CINESAX component.
  late Column2CINESAXModel column2CINESAXModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    appBarModel = createModel(context, () => AppBarModel());
    column1CINESAXModel = createModel(context, () => Column1CINESAXModel());
    column2CINESAXModel = createModel(context, () => Column2CINESAXModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    appBarModel.dispose();
    column1CINESAXModel.dispose();
    column2CINESAXModel.dispose();
    navbarModel.dispose();
  }
}
