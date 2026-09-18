import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'image_text_row_model.dart';
export 'image_text_row_model.dart';

class ImageTextRowWidget extends StatefulWidget {
  const ImageTextRowWidget({super.key});

  @override
  State<ImageTextRowWidget> createState() => _ImageTextRowWidgetState();
}

class _ImageTextRowWidgetState extends State<ImageTextRowWidget> {
  late ImageTextRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageTextRowModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
