import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/cmr_favorite_card/cmr_favorite_card_widget.dart';
import '/home/components/cmr_pulse_card/cmr_pulse_card_widget.dart';
import 'package:flutter/material.dart';
import 'home_column_model.dart';
export 'home_column_model.dart';

class HomeColumnWidget extends StatefulWidget {
  const HomeColumnWidget({super.key});

  @override
  State<HomeColumnWidget> createState() => _HomeColumnWidgetState();
}

class _HomeColumnWidgetState extends State<HomeColumnWidget> {
  late HomeColumnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeColumnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          wrapWithModel(
            model: _model.cmrPulseCardModel,
            updateCallback: () => safeSetState(() {}),
            child: CmrPulseCardWidget(),
          ),
          wrapWithModel(
            model: _model.cmrFavoriteCardModel,
            updateCallback: () => safeSetState(() {}),
            child: CmrFavoriteCardWidget(),
          ),
        ],
      ),
    );
  }
}
