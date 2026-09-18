import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'image_label_model.dart';
export 'image_label_model.dart';

class ImageLabelWidget extends StatefulWidget {
  const ImageLabelWidget({
    super.key,
    required this.label,
  });

  final String? label;

  @override
  State<ImageLabelWidget> createState() => _ImageLabelWidgetState();
}

class _ImageLabelWidgetState extends State<ImageLabelWidget> {
  late ImageLabelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageLabelModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 53.0,
      height: 18.0,
      decoration: BoxDecoration(
        color: Color(0xBE3B3B3B),
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).customColor9,
          width: 0.7,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          widget.label!,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                fontSize: 10.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
      ),
    );
  }
}
