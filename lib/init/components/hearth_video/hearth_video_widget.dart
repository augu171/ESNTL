import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'hearth_video_model.dart';
export 'hearth_video_model.dart';

/// Video loop del corazón latiendo usados en la pantalla de carga y en el
/// login/register
class HearthVideoWidget extends StatefulWidget {
  const HearthVideoWidget({super.key});

  @override
  State<HearthVideoWidget> createState() => _HearthVideoWidgetState();
}

class _HearthVideoWidgetState extends State<HearthVideoWidget> {
  late HearthVideoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HearthVideoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          Align(
            alignment: AlignmentDirectional(0.05, 0.03),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Container(
                decoration: BoxDecoration(),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowVideoPlayer(
                  path: 'assets/videos/video_loadscreen_hearth.mp4',
                  videoType: VideoType.asset,
                  autoPlay: true,
                  looping: true,
                  showControls: false,
                  allowFullScreen: false,
                  allowPlaybackSpeedMenu: false,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(2.5, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: SvgPicture.asset(
                'assets/images/Dot_Grid.svg',
                width: MediaQuery.sizeOf(context).width * 1.0,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
