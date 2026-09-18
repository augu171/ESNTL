import '/flutter_flow/flutter_flow_util.dart';
import 'ask_e_s_n_t_l_column_widget.dart' show AskESNTLColumnWidget;
import 'package:flutter/material.dart';

class AskESNTLColumnModel extends FlutterFlowModel<AskESNTLColumnWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();
  }
}
