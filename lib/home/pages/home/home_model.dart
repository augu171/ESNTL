import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/home/components/ask_e_s_n_t_l_column/ask_e_s_n_t_l_column_widget.dart';
import '/home/components/essential_column/essential_column_widget.dart';
import '/home/components/g_o_c_m_r_column/g_o_c_m_r_column_widget.dart';
import '/home/components/home_column/home_column_widget.dart';
import '/home/components/planner_column/planner_column_widget.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.
  /// Columna a la vista
  int columnView = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Gradient_Background component.
  late GradientBackgroundModel gradientBackgroundModel;
  // Model for Home_Column component.
  late HomeColumnModel homeColumnModel;
  // Model for Planner_Column component.
  late PlannerColumnModel plannerColumnModel;
  // Model for Essential_Column component.
  late EssentialColumnModel essentialColumnModel;
  // Model for GO_CMR_Column component.
  late GOCMRColumnModel gOCMRColumnModel;
  // Model for Ask_ESNTL_Column component.
  late AskESNTLColumnModel askESNTLColumnModel;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    homeColumnModel = createModel(context, () => HomeColumnModel());
    plannerColumnModel = createModel(context, () => PlannerColumnModel());
    essentialColumnModel = createModel(context, () => EssentialColumnModel());
    gOCMRColumnModel = createModel(context, () => GOCMRColumnModel());
    askESNTLColumnModel = createModel(context, () => AskESNTLColumnModel());
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    homeColumnModel.dispose();
    plannerColumnModel.dispose();
    essentialColumnModel.dispose();
    gOCMRColumnModel.dispose();
    askESNTLColumnModel.dispose();
  }
}
