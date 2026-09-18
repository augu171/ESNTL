import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/init/components/sign_in_login_logo/sign_in_login_logo_widget.dart';
import '/index.dart';
import 'log_in_widget.dart' show LogInWidget;
import 'package:flutter/material.dart';

class LogInModel extends FlutterFlowModel<LogInWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Gradient_Background component.
  late GradientBackgroundModel gradientBackgroundModel;
  // Model for SignIn_Login_Logo component.
  late SignInLoginLogoModel signInLoginLogoModel;
  // State field(s) for emailTxt widget.
  FocusNode? emailTxtFocusNode;
  TextEditingController? emailTxtTextController;
  String? Function(BuildContext, String?)? emailTxtTextControllerValidator;
  // State field(s) for passTxt widget.
  FocusNode? passTxtFocusNode;
  TextEditingController? passTxtTextController;
  late bool passTxtVisibility;
  String? Function(BuildContext, String?)? passTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    signInLoginLogoModel = createModel(context, () => SignInLoginLogoModel());
    passTxtVisibility = false;
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    signInLoginLogoModel.dispose();
    emailTxtFocusNode?.dispose();
    emailTxtTextController?.dispose();

    passTxtFocusNode?.dispose();
    passTxtTextController?.dispose();
  }
}
