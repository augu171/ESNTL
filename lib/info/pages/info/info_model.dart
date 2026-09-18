import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/info/components/info_card/info_card_widget.dart';
import '/index.dart';
import 'info_widget.dart' show InfoWidget;
import 'package:flutter/material.dart';

class InfoModel extends FlutterFlowModel<InfoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Gradient_Background component.
  late GradientBackgroundModel gradientBackgroundModel;
  // Model for App.
  late InfoCardModel appModel;
  // Model for Legal.
  late InfoCardModel legalModel;
  // Model for Autor.
  late InfoCardModel autorModel;
  // Model for Niveles.
  late InfoCardModel nivelesModel;
  // Model for Design.
  late InfoCardModel designModel;
  // Model for LogOut.
  late InfoCardModel logOutModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    appModel = createModel(context, () => InfoCardModel());
    legalModel = createModel(context, () => InfoCardModel());
    autorModel = createModel(context, () => InfoCardModel());
    nivelesModel = createModel(context, () => InfoCardModel());
    designModel = createModel(context, () => InfoCardModel());
    logOutModel = createModel(context, () => InfoCardModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    appModel.dispose();
    legalModel.dispose();
    autorModel.dispose();
    nivelesModel.dispose();
    designModel.dispose();
    logOutModel.dispose();
    navbarModel.dispose();
  }
}
