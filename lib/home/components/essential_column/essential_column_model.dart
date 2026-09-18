import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/module_card/module_card_widget.dart';
import 'essential_column_widget.dart' show EssentialColumnWidget;
import 'package:flutter/material.dart';

class EssentialColumnModel extends FlutterFlowModel<EssentialColumnWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ModuleCard.
  late ModuleCardModel moduleCardModel1;
  // Model for ModuleCard.
  late ModuleCardModel moduleCardModel2;
  // Model for ModuleCard.
  late ModuleCardModel moduleCardModel3;
  // Model for ModuleCard.
  late ModuleCardModel moduleCardModel4;

  @override
  void initState(BuildContext context) {
    moduleCardModel1 = createModel(context, () => ModuleCardModel());
    moduleCardModel2 = createModel(context, () => ModuleCardModel());
    moduleCardModel3 = createModel(context, () => ModuleCardModel());
    moduleCardModel4 = createModel(context, () => ModuleCardModel());
  }

  @override
  void dispose() {
    moduleCardModel1.dispose();
    moduleCardModel2.dispose();
    moduleCardModel3.dispose();
    moduleCardModel4.dispose();
  }
}
