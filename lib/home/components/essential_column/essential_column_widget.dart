import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/components/module_card/module_card_widget.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'essential_column_model.dart';
export 'essential_column_model.dart';

class EssentialColumnWidget extends StatefulWidget {
  const EssentialColumnWidget({super.key});

  @override
  State<EssentialColumnWidget> createState() => _EssentialColumnWidgetState();
}

class _EssentialColumnWidgetState extends State<EssentialColumnWidget> {
  late EssentialColumnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EssentialColumnModel());
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            child: Text(
              FFLocalizations.of(context).getText(
                'ogh8zpcj' /* CONCEPTOS ESENCIALES DE RM CAR... */,
              ),
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    lineHeight: 1.2,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).labelMediumIsCustom,
                  ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(EsencialWidget.routeName);
                  },
                  child: wrapWithModel(
                    model: _model.moduleCardModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: ModuleCardWidget(
                      chapters: '3 capítulos',
                      number: '1',
                      subtitle: 'Física, secuencias, planos, anatomía cardíaca',
                      title: 'Fundamentos de RMC',
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.moduleCardModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: ModuleCardWidget(
                    chapters: '4 capítulos',
                    number: '2',
                    subtitle:
                        'Función ventricular, anatomía coronaria, válvulas, shunts',
                    title: 'Morfología y función',
                  ),
                ),
                wrapWithModel(
                  model: _model.moduleCardModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: ModuleCardWidget(
                    chapters: '3 capítulos',
                    number: '3',
                    subtitle: 'Mapas, fibrosis y realce con Gadolinio',
                    title: 'Caracterización tisular',
                  ),
                ),
                wrapWithModel(
                  model: _model.moduleCardModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: ModuleCardWidget(
                    chapters: '3 capítulos',
                    number: '4',
                    subtitle: 'Infarto, Miocardiopatías',
                    title: 'Aplicación clínica',
                  ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ],
    );
  }
}
