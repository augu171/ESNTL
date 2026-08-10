import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'action_grid_item_model.dart';
export 'action_grid_item_model.dart';

class ActionGridItemWidget extends StatefulWidget {
  const ActionGridItemWidget({
    super.key,
    required this.img,
    String? label,
    bool? active,
  })  : this.label = label ?? 'PROTOCOL',
        this.active = active ?? false;

  final String? img;
  final String label;
  final bool active;

  @override
  State<ActionGridItemWidget> createState() => _ActionGridItemWidgetState();
}

class _ActionGridItemWidgetState extends State<ActionGridItemWidget> {
  late ActionGridItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActionGridItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          valueOrDefault<bool>(
            widget.active,
            false,
          )
              ? FlutterFlowTheme.of(context).tertiary
              : Colors.transparent,
          Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(2.0),
        shape: BoxShape.rectangle,
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          child: Container(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/2vqf7_',
                  fit: BoxFit.cover,
                ),
                Text(
                  valueOrDefault<String>(
                    widget.label,
                    'PROTOCOL',
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        font: GoogleFonts.roboto(
                          fontWeight: FontWeight.w800,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelSmall.fontStyle,
                        ),
                        color: valueOrDefault<Color>(
                          valueOrDefault<bool>(
                            widget.active,
                            false,
                          )
                              ? Colors.white
                              : FlutterFlowTheme.of(context).primaryText,
                          FlutterFlowTheme.of(context).primaryText,
                        ),
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                        lineHeight: 1.2,
                      ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ),
        ),
      ),
    );
  }
}
