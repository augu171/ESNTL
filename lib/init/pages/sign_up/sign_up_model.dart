import '/flutter_flow/flutter_flow_util.dart';
import '/init/components/sign_in_login_logo/sign_in_login_logo_widget.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

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
  // State field(s) for coPassTxt widget.
  FocusNode? coPassTxtFocusNode;
  TextEditingController? coPassTxtTextController;
  late bool coPassTxtVisibility;
  String? Function(BuildContext, String?)? coPassTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signInLoginLogoModel = createModel(context, () => SignInLoginLogoModel());
    passTxtVisibility = false;
    coPassTxtVisibility = false;
  }

  @override
  void dispose() {
    signInLoginLogoModel.dispose();
    emailTxtFocusNode?.dispose();
    emailTxtTextController?.dispose();

    passTxtFocusNode?.dispose();
    passTxtTextController?.dispose();

    coPassTxtFocusNode?.dispose();
    coPassTxtTextController?.dispose();
  }
}
