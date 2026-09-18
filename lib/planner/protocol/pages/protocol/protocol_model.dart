import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/app_bar/app_bar_widget.dart';
import '/global_components/gradient_background/gradient_background_widget.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/planner/protocol/components/column_1_protocol/column1_protocol_widget.dart';
import '/planner/protocol/components/column_2_protocol/column2_protocol_widget.dart';
import '/planner/protocol/components/column_3_protocol/column3_protocol_widget.dart';
import 'protocol_widget.dart' show ProtocolWidget;
import 'package:flutter/material.dart';

class ProtocolModel extends FlutterFlowModel<ProtocolWidget> {
  ///  Local state fields for this page.
  /// En que pagina del pageviews se encuentra
  int dotValue = 0;

  ///  State fields for stateful widgets in this page.

  // Model for Gradient_Background component.
  late GradientBackgroundModel gradientBackgroundModel;
  // Model for appBar component.
  late AppBarModel appBarModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for Column_1_Protocol component.
  late Column1ProtocolModel column1ProtocolModel;
  // Model for Column_2_Protocol component.
  late Column2ProtocolModel column2ProtocolModel;
  // Model for Column_3_Protocol component.
  late Column3ProtocolModel column3ProtocolModel;
  // Model for Navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    gradientBackgroundModel =
        createModel(context, () => GradientBackgroundModel());
    appBarModel = createModel(context, () => AppBarModel());
    column1ProtocolModel = createModel(context, () => Column1ProtocolModel());
    column2ProtocolModel = createModel(context, () => Column2ProtocolModel());
    column3ProtocolModel = createModel(context, () => Column3ProtocolModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    gradientBackgroundModel.dispose();
    appBarModel.dispose();
    column1ProtocolModel.dispose();
    column2ProtocolModel.dispose();
    column3ProtocolModel.dispose();
    navbarModel.dispose();
  }
}
