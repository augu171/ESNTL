import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'topic_and_bullet_with_border_model.dart';
export 'topic_and_bullet_with_border_model.dart';

class TopicAndBulletWithBorderWidget extends StatefulWidget {
  const TopicAndBulletWithBorderWidget({
    super.key,
    this.topic,
    required this.bulletText,
  });

  final String? topic;
  final List<String>? bulletText;

  @override
  State<TopicAndBulletWithBorderWidget> createState() =>
      _TopicAndBulletWithBorderWidgetState();
}

class _TopicAndBulletWithBorderWidgetState
    extends State<TopicAndBulletWithBorderWidget> {
  late TopicAndBulletWithBorderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopicAndBulletWithBorderModel());
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
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Image.asset(
            'assets/images/nota-perfu-1.png',
          ).image,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(14.0, 8.0, 0.0, 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.topic != null && widget.topic != '')
              Text(
                widget.topic!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                    ),
              ),
            Builder(
              builder: (context) {
                final bulletPoint = widget.bulletText!.toList();

                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children:
                      List.generate(bulletPoint.length, (bulletPointIndex) {
                    final bulletPointItem = bulletPoint[bulletPointIndex];
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              6.0, 8.0, 6.0, 0.0),
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
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
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
          ],
        ),
      ),
    );
  }
}
