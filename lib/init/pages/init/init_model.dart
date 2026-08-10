import '/flutter_flow/flutter_flow_util.dart';
import '/init/components/hearth_video/hearth_video_widget.dart';
import '/init/components/sign_in_login_logo/sign_in_login_logo_widget.dart';
import '/index.dart';
import 'init_widget.dart' show InitWidget;
import 'package:flutter/material.dart';

class InitModel extends FlutterFlowModel<InitWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SignIn_Login_Logo component.
  late SignInLoginLogoModel signInLoginLogoModel;
  // Model for Hearth_Video component.
  late HearthVideoModel hearthVideoModel;

  @override
  void initState(BuildContext context) {
    signInLoginLogoModel = createModel(context, () => SignInLoginLogoModel());
    hearthVideoModel = createModel(context, () => HearthVideoModel());
  }

  @override
  void dispose() {
    signInLoginLogoModel.dispose();
    hearthVideoModel.dispose();
  }
}
