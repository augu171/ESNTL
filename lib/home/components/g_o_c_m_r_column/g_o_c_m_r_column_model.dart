import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/diagnosis_item/diagnosis_item_widget.dart';
import 'g_o_c_m_r_column_widget.dart' show GOCMRColumnWidget;
import 'package:flutter/material.dart';

class GOCMRColumnModel extends FlutterFlowModel<GOCMRColumnWidget> {
  ///  Local state fields for this component.
  /// Botón seleccionado "hallazgo" o "diagnóstico"
  int buttonSelected = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Input widget.
  FocusNode? inputFocusNode;
  TextEditingController? inputTextController;
  String? Function(BuildContext, String?)? inputTextControllerValidator;
  // Model for DiagnosisItem.
  late DiagnosisItemModel diagnosisItemModel1;
  // Model for DiagnosisItem.
  late DiagnosisItemModel diagnosisItemModel2;
  // Model for DiagnosisItem.
  late DiagnosisItemModel diagnosisItemModel3;
  // Model for DiagnosisItem.
  late DiagnosisItemModel diagnosisItemModel4;
  // Model for DiagnosisItem.
  late DiagnosisItemModel diagnosisItemModel5;
  // Model for DiagnosisItem.
  late DiagnosisItemModel diagnosisItemModel6;

  @override
  void initState(BuildContext context) {
    diagnosisItemModel1 = createModel(context, () => DiagnosisItemModel());
    diagnosisItemModel2 = createModel(context, () => DiagnosisItemModel());
    diagnosisItemModel3 = createModel(context, () => DiagnosisItemModel());
    diagnosisItemModel4 = createModel(context, () => DiagnosisItemModel());
    diagnosisItemModel5 = createModel(context, () => DiagnosisItemModel());
    diagnosisItemModel6 = createModel(context, () => DiagnosisItemModel());
  }

  @override
  void dispose() {
    inputFocusNode?.dispose();
    inputTextController?.dispose();

    diagnosisItemModel1.dispose();
    diagnosisItemModel2.dispose();
    diagnosisItemModel3.dispose();
    diagnosisItemModel4.dispose();
    diagnosisItemModel5.dispose();
    diagnosisItemModel6.dispose();
  }
}
