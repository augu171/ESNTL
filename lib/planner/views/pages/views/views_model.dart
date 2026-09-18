import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/index.dart';
import 'views_widget.dart' show ViewsWidget;
import 'package:flutter/material.dart';

class ViewsModel extends FlutterFlowModel<ViewsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Gradient_Background component.
  late GradientBackgroundModel gradientBackgroundModel;
  // Model for appBar component.
  late AppBarModel appBarModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    appBarModel = createModel(context, () => AppBarModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    appBarModel.dispose();
    navbarModel.dispose();
  }
}
