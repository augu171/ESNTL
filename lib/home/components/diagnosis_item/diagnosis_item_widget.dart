import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'diagnosis_item_model.dart';
export 'diagnosis_item_model.dart';

class DiagnosisItemWidget extends StatefulWidget {
  const DiagnosisItemWidget({
    super.key,
    String? name,
  }) : this.name = name ?? 'MCH';

  final String name;

  @override
  State<DiagnosisItemWidget> createState() => _DiagnosisItemWidgetState();
}

class _DiagnosisItemWidgetState extends State<DiagnosisItemWidget> {
  late DiagnosisItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiagnosisItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Text(
                  valueOrDefault<String>(
                    widget.name,
                    'MCH',
                  ),
                  maxLines: 1,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 13.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        lineHeight: 1.0,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                color: Color(0xFF666668),
                size: 14.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
