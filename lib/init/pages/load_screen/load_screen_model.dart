import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/init/components/hearth_video/hearth_video_widget.dart';
import '/init/components/sign_in_login_logo/sign_in_login_logo_widget.dart';
import '/index.dart';
import 'load_screen_widget.dart' show LoadScreenWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class LoadScreenModel extends FlutterFlowModel<LoadScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SignIn_Login_Logo component.
  late SignInLoginLogoModel signInLoginLogoModel1;
  // Model for Hearth_Video component.
  late HearthVideoModel hearthVideoModel1;
  // State field(s) for secretTimer widget.
  final secretTimerInitialTimeMs1 = 5000;
  int secretTimerMilliseconds1 = 5000;
  String secretTimerValue1 = StopWatchTimer.getDisplayTime(
    5000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController secretTimerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Model for SignIn_Login_Logo component.
  late SignInLoginLogoModel signInLoginLogoModel2;
  // Model for Hearth_Video component.
  late HearthVideoModel hearthVideoModel2;
  // State field(s) for secretTimer widget.
  final secretTimerInitialTimeMs2 = 5000;
  int secretTimerMilliseconds2 = 5000;
  String secretTimerValue2 = StopWatchTimer.getDisplayTime(
    5000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController secretTimerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {
    signInLoginLogoModel1 = createModel(context, () => SignInLoginLogoModel());
    hearthVideoModel1 = createModel(context, () => HearthVideoModel());
    signInLoginLogoModel2 = createModel(context, () => SignInLoginLogoModel());
    hearthVideoModel2 = createModel(context, () => HearthVideoModel());
  }

  @override
  void dispose() {
    signInLoginLogoModel1.dispose();
    hearthVideoModel1.dispose();
    secretTimerController1.dispose();
    signInLoginLogoModel2.dispose();
    hearthVideoModel2.dispose();
    secretTimerController2.dispose();
  }
}
