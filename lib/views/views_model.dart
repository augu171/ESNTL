import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/navbar_simple/navbar_simple_widget.dart';
import 'views_widget.dart' show ViewsWidget;
import 'package:flutter/material.dart';

class ViewsModel extends FlutterFlowModel<ViewsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Navbar_Simple component.
  late NavbarSimpleModel navbarSimpleModel;

  @override
  void initState(BuildContext context) {
    navbarSimpleModel = createModel(context, () => NavbarSimpleModel());
  }

  @override
  void dispose() {
    navbarSimpleModel.dispose();
  }
}
