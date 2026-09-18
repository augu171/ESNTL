import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'item_image_topogra_model.dart';
export 'item_image_topogra_model.dart';

class ItemImageTopograWidget extends StatefulWidget {
  const ItemImageTopograWidget({
    super.key,
    required this.colorPoint,
    required this.text,
    Color? textColor,
  }) : this.textColor = textColor ?? const Color(0xFFDDDDDD);

  final Color? colorPoint;
  final String? text;
  final Color textColor;

  @override
  State<ItemImageTopograWidget> createState() => _ItemImageTopograWidgetState();
}

class _ItemImageTopograWidgetState extends State<ItemImageTopograWidget> {
  late ItemImageTopograModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemImageTopograModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
            color: widget.colorPoint,
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget.text,
            'text',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                color: widget.textColor,
                fontSize: 11.7,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
        ),
      ].divide(SizedBox(width: 6.0)),
    );
  }
}
