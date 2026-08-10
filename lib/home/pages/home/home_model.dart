import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/essential_column/essential_column_widget.dart';
import '/home/components/home_column/home_column_widget.dart';
import '/home/components/planner_column/planner_column_widget.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.
  /// Columna a la vista
  int columnView = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Home_Column component.
  late HomeColumnModel homeColumnModel;
  // Model for Planner_Column component.
  late PlannerColumnModel plannerColumnModel;
  // Model for Essential_Column component.
  late EssentialColumnModel essentialColumnModel;

  @override
  void initState(BuildContext context) {
    homeColumnModel = createModel(context, () => HomeColumnModel());
    plannerColumnModel = createModel(context, () => PlannerColumnModel());
    essentialColumnModel = createModel(context, () => EssentialColumnModel());
  }

  @override
  void dispose() {
    homeColumnModel.dispose();
    plannerColumnModel.dispose();
    essentialColumnModel.dispose();
  }
}
