import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'topic_and_bullet_text_model.dart';
export 'topic_and_bullet_text_model.dart';

class TopicAndBulletTextWidget extends StatefulWidget {
  const TopicAndBulletTextWidget({
    super.key,
    required this.topic,
    required this.bulletText,
    bool? isThinTitle,
  }) : this.isThinTitle = isThinTitle ?? false;

  final String? topic;
  final List<String>? bulletText;
  final bool isThinTitle;

  @override
  State<TopicAndBulletTextWidget> createState() =>
      _TopicAndBulletTextWidgetState();
}

class _TopicAndBulletTextWidgetState extends State<TopicAndBulletTextWidget> {
  late TopicAndBulletTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopicAndBulletTextModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (!widget.isThinTitle)
              Expanded(
                child: Text(
                  widget.topic!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ),
            if (widget.isThinTitle)
              Expanded(
                child: Text(
                  widget.topic!,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).primary,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                      ),
                ),
              ),
          ],
        ),
        Builder(
          builder: (context) {
            final bulletPoint = widget.bulletText!.toList();

            return Column(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(bulletPoint.length, (bulletPointIndex) {
                final bulletPointItem = bulletPoint[bulletPointIndex];
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(6.0, 8.0, 6.0, 0.0),
                      child: Container(
                        width: 4.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryText,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        bulletPointItem,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: !FlutterFlowTheme.of(context)
                                  .bodyMediumIsCustom,
                            ),
                      ),
                    ),
                  ],
                );
              }),
            );
          },
        ),
      ].divide(SizedBox(height: widget.isThinTitle ? 0.0 : 12.0)),
    );
  }
}
