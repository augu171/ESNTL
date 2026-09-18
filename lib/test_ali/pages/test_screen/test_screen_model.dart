import '/flutter_flow/flutter_flow_util.dart';
import '/test_ali/components/image_label/image_label_widget.dart';
import '/test_ali/components/topic_and_bullet_text/topic_and_bullet_text_widget.dart';
import '/test_ali/components/topic_and_bullet_with_border/topic_and_bullet_with_border_widget.dart';
import 'test_screen_widget.dart' show TestScreenWidget;
import 'package:flutter/material.dart';

class TestScreenModel extends FlutterFlowModel<TestScreenWidget> {
  ///  Local state fields for this page.

  int currentPage = 0;

  List<String> referencesNecesarias = [
    'Planificar los cortes SAX sobre los ejes largos 2C, 3C y 4C',
    'Habitualmente se adquieren tres cortes: basal, medioventricular y apical',
    'Puede añadirse un eje largo, pero reduce el tiempo disponible por latido y puede limitar la adquisición con frecuencias cardíacas elevadas'
  ];
  void addToReferencesNecesarias(String item) => referencesNecesarias.add(item);
  void removeFromReferencesNecesarias(String item) =>
      referencesNecesarias.remove(item);
  void removeAtIndexFromReferencesNecesarias(int index) =>
      referencesNecesarias.removeAt(index);
  void insertAtIndexInReferencesNecesarias(int index, String item) =>
      referencesNecesarias.insert(index, item);
  void updateReferencesNecesariasAtIndex(
          int index, Function(String) updateFn) =>
      referencesNecesarias[index] = updateFn(referencesNecesarias[index]);

  List<String> posicionDelCorte = [
    'Planificar en tele-diástole, verificando que los tres cortes queden dentro del ventrículo izquierdo',
    'Verificar en el 3C que el corte basal no incluya el tracto de salida del VI (flecha amarilla)',
    'Cuando se usan 3 cortes el Mapa T1, T2 y perfusión debe tener la misma posición'
  ];
  void addToPosicionDelCorte(String item) => posicionDelCorte.add(item);
  void removeFromPosicionDelCorte(String item) => posicionDelCorte.remove(item);
  void removeAtIndexFromPosicionDelCorte(int index) =>
      posicionDelCorte.removeAt(index);
  void insertAtIndexInPosicionDelCorte(int index, String item) =>
      posicionDelCorte.insert(index, item);
  void updatePosicionDelCorteAtIndex(int index, Function(String) updateFn) =>
      posicionDelCorte[index] = updateFn(posicionDelCorte[index]);

  List<String> tecnia3De5 = [
    'Se planean 5 cortes el 1ero y el 5to en los extremos del ventrículo izquierdo cubriendo todo su largo',
    'Reducir luego el número de 5 a 3 cortes',
    'Los 3 cortes restantes quedan todos dentro del VI'
  ];
  void addToTecnia3De5(String item) => tecnia3De5.add(item);
  void removeFromTecnia3De5(String item) => tecnia3De5.remove(item);
  void removeAtIndexFromTecnia3De5(int index) => tecnia3De5.removeAt(index);
  void insertAtIndexInTecnia3De5(int index, String item) =>
      tecnia3De5.insert(index, item);
  void updateTecnia3De5AtIndex(int index, Function(String) updateFn) =>
      tecnia3De5[index] = updateFn(tecnia3De5[index]);

  List<String> dryRyn = [
    'Antes de inyectar, realizar una prueba para verificar la posición de los cortes y descartar artefactos',
    'Utilizar una adquisición abreviada (5 - 10 latidos)'
  ];
  void addToDryRyn(String item) => dryRyn.add(item);
  void removeFromDryRyn(String item) => dryRyn.remove(item);
  void removeAtIndexFromDryRyn(int index) => dryRyn.removeAt(index);
  void insertAtIndexInDryRyn(int index, String item) =>
      dryRyn.insert(index, item);
  void updateDryRynAtIndex(int index, Function(String) updateFn) =>
      dryRyn[index] = updateFn(dryRyn[index]);

  List<String> perfusion = [
    'Una vez validado el dry-run, programar la adquisición completa',
    'Iniciar la secuencia y dejar transcurrir las imágenes iniciales de densidad protónica (3–4 en esta secuencia), antes de inyectar el gadolinio',
    'Estas imágenes sirven como referencia para corregir la inhomogeneidad de señal de las bobinas y normalizar la señal',
    'Además, permiten confirmar que la adquisición se inició correctamente y detectar un fallo antes de administrar el contraste',
    'Iniciar un cronómetro con la inyección para controlar el tiempo con miras al LGE '
  ];
  void addToPerfusion(String item) => perfusion.add(item);
  void removeFromPerfusion(String item) => perfusion.remove(item);
  void removeAtIndexFromPerfusion(int index) => perfusion.removeAt(index);
  void insertAtIndexInPerfusion(int index, String item) =>
      perfusion.insert(index, item);
  void updatePerfusionAtIndex(int index, Function(String) updateFn) =>
      perfusion[index] = updateFn(perfusion[index]);

  List<String> screen2Tips = [
    'En presencia de disfunción sistólica severa o bajo gasto, la llegada del contraste al VI se retrasa',
    'Es necesario prolongar la adquisición >60 latidos'
  ];
  void addToScreen2Tips(String item) => screen2Tips.add(item);
  void removeFromScreen2Tips(String item) => screen2Tips.remove(item);
  void removeAtIndexFromScreen2Tips(int index) => screen2Tips.removeAt(index);
  void insertAtIndexInScreen2Tips(int index, String item) =>
      screen2Tips.insert(index, item);
  void updateScreen2TipsAtIndex(int index, Function(String) updateFn) =>
      screen2Tips[index] = updateFn(screen2Tips[index]);

  List<String> conMoco = [
    'Algunas secuencias permiten adquirir en respiración libre y aplicar corrección de movimiento —MOCO— durante la reconstrucción o el posprocesamiento',
    'Para optimizar el resultado, el paciente debe respirar de forma suave y regular, manteniendo estable amplitud y frecuencia respiratoria'
  ];
  void addToConMoco(String item) => conMoco.add(item);
  void removeFromConMoco(String item) => conMoco.remove(item);
  void removeAtIndexFromConMoco(int index) => conMoco.removeAt(index);
  void insertAtIndexInConMoco(int index, String item) =>
      conMoco.insert(index, item);
  void updateConMocoAtIndex(int index, Function(String) updateFn) =>
      conMoco[index] = updateFn(conMoco[index]);

  List<String> sinMoco = [
    'Cuando no se dispone de MOCO, realizar una apnea dirigida durante el primer paso miocárdico',
    'Monitorizar en tiempo real la llegada del gadolinio al corazón derecho, al visualizar su llegada indicar una apnea espiratoria prolongada',
    'Mantenerla durante la llegada del contraste al VI y su primer paso por el miocardio'
  ];
  void addToSinMoco(String item) => sinMoco.add(item);
  void removeFromSinMoco(String item) => sinMoco.remove(item);
  void removeAtIndexFromSinMoco(int index) => sinMoco.removeAt(index);
  void insertAtIndexInSinMoco(int index, String item) =>
      sinMoco.insert(index, item);
  void updateSinMocoAtIndex(int index, Function(String) updateFn) =>
      sinMoco[index] = updateFn(sinMoco[index]);

  List<String> screen3Tips = [
    'MOCO realinea las imágenes y suavizar el aspecto de las imágenes',
    'El autor siempre revisa la serie sin corrección para mantener el control visual'
  ];
  void addToScreen3Tips(String item) => screen3Tips.add(item);
  void removeFromScreen3Tips(String item) => screen3Tips.remove(item);
  void removeAtIndexFromScreen3Tips(int index) => screen3Tips.removeAt(index);
  void insertAtIndexInScreen3Tips(int index, String item) =>
      screen3Tips.insert(index, item);
  void updateScreen3TipsAtIndex(int index, Function(String) updateFn) =>
      screen3Tips[index] = updateFn(screen3Tips[index]);

  List<String> perfusionCuantitativa = [
    'Permite medir el flujo sanguíneo miocárdico absoluto (mL/min/g) y la reserva de perfusión miocárdica',
    'Complementa la evaluación visual y reduce la dependencia del observador',
    'Puede mejorar la detección de isquemia difusa, enfermedad multivaso y disfunción microvascular',
    'Aporta información diagnóstica y pronóstica adicional'
  ];
  void addToPerfusionCuantitativa(String item) =>
      perfusionCuantitativa.add(item);
  void removeFromPerfusionCuantitativa(String item) =>
      perfusionCuantitativa.remove(item);
  void removeAtIndexFromPerfusionCuantitativa(int index) =>
      perfusionCuantitativa.removeAt(index);
  void insertAtIndexInPerfusionCuantitativa(int index, String item) =>
      perfusionCuantitativa.insert(index, item);
  void updatePerfusionCuantitativaAtIndex(
          int index, Function(String) updateFn) =>
      perfusionCuantitativa[index] = updateFn(perfusionCuantitativa[index]);

  List<String> singleBlous = [
    'Utiliza una única inyección del bolo convencional, sin prebolo diluido',
    'En cada latido, la secuencia combina una adquisición de baja resolución espacial y corto tiempo de saturación para medir la AIF con las imágenes de mayor resolución destinadas a evaluar la perfusión miocárdica',
    'Reduce la saturación de la señal del pool sanguíneo y permite la cuantificación automatizada',
    'Simplifica el protocolo, pero requiere una secuencia y un software específicos'
  ];
  void addToSingleBlous(String item) => singleBlous.add(item);
  void removeFromSingleBlous(String item) => singleBlous.remove(item);
  void removeAtIndexFromSingleBlous(int index) => singleBlous.removeAt(index);
  void insertAtIndexInSingleBlous(int index, String item) =>
      singleBlous.insert(index, item);
  void updateSingleBlousAtIndex(int index, Function(String) updateFn) =>
      singleBlous[index] = updateFn(singleBlous[index]);

  List<String> dualBolus = [
    'Utiliza primero un prebolo diluido, habitualmente al 10% (ó 1 ml), para medir la AIF sin saturación',
    'Posteriormente se administra el bolo convencional para evaluar la perfusión miocárdica',
    'Ambos bolos deben mantener idealmente el mismo volumen total y flujo de inyección',
    'Un protocolo de estrés y reposo requiere cuatro inyecciones y cuatro adquisiciones, lo que aumenta la complejidad operativa'
  ];
  void addToDualBolus(String item) => dualBolus.add(item);
  void removeFromDualBolus(String item) => dualBolus.remove(item);
  void removeAtIndexFromDualBolus(int index) => dualBolus.removeAt(index);
  void insertAtIndexInDualBolus(int index, String item) =>
      dualBolus.insert(index, item);
  void updateDualBolusAtIndex(int index, Function(String) updateFn) =>
      dualBolus[index] = updateFn(dualBolus[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for ImageLabel component.
  late ImageLabelModel imageLabelModel1;
  // Model for ImageLabel component.
  late ImageLabelModel imageLabelModel2;
  // Model for ImageLabel component.
  late ImageLabelModel imageLabelModel3;
  // Model for TopicAndBulletText component.
  late TopicAndBulletTextModel topicAndBulletTextModel1;
  // Model for TopicAndBulletText component.
  late TopicAndBulletTextModel topicAndBulletTextModel2;
  // Model for TopicAndBulletWithBorder component.
  late TopicAndBulletWithBorderModel topicAndBulletWithBorderModel1;
  // Model for TopicAndBulletText component.
  late TopicAndBulletTextModel topicAndBulletTextModel3;
  // Model for TopicAndBulletText component.
  late TopicAndBulletTextModel topicAndBulletTextModel4;
  // Model for TopicAndBulletWithBorder component.
  late TopicAndBulletWithBorderModel topicAndBulletWithBorderModel2;
  // Model for TopicAndBulletText component.
  late TopicAndBulletTextModel topicAndBulletTextModel5;
  // Model for TopicAndBulletText component.
  late TopicAndBulletTextModel topicAndBulletTextModel6;
  // Model for TopicAndBulletWithBorder component.
  late TopicAndBulletWithBorderModel topicAndBulletWithBorderModel3;
  // Model for TopicAndBulletText component.
  late TopicAndBulletTextModel topicAndBulletTextModel7;
  // Model for TopicAndBulletText component.
  late TopicAndBulletTextModel topicAndBulletTextModel8;
  // Model for TopicAndBulletText component.
  late TopicAndBulletTextModel topicAndBulletTextModel9;

  @override
  void initState(BuildContext context) {
    imageLabelModel1 = createModel(context, () => ImageLabelModel());
    imageLabelModel2 = createModel(context, () => ImageLabelModel());
    imageLabelModel3 = createModel(context, () => ImageLabelModel());
    topicAndBulletTextModel1 =
        createModel(context, () => TopicAndBulletTextModel());
    topicAndBulletTextModel2 =
        createModel(context, () => TopicAndBulletTextModel());
    topicAndBulletWithBorderModel1 =
        createModel(context, () => TopicAndBulletWithBorderModel());
    topicAndBulletTextModel3 =
        createModel(context, () => TopicAndBulletTextModel());
    topicAndBulletTextModel4 =
        createModel(context, () => TopicAndBulletTextModel());
    topicAndBulletWithBorderModel2 =
        createModel(context, () => TopicAndBulletWithBorderModel());
    topicAndBulletTextModel5 =
        createModel(context, () => TopicAndBulletTextModel());
    topicAndBulletTextModel6 =
        createModel(context, () => TopicAndBulletTextModel());
    topicAndBulletWithBorderModel3 =
        createModel(context, () => TopicAndBulletWithBorderModel());
    topicAndBulletTextModel7 =
        createModel(context, () => TopicAndBulletTextModel());
    topicAndBulletTextModel8 =
        createModel(context, () => TopicAndBulletTextModel());
    topicAndBulletTextModel9 =
        createModel(context, () => TopicAndBulletTextModel());
  }

  @override
  void dispose() {
    imageLabelModel1.dispose();
    imageLabelModel2.dispose();
    imageLabelModel3.dispose();
    topicAndBulletTextModel1.dispose();
    topicAndBulletTextModel2.dispose();
    topicAndBulletWithBorderModel1.dispose();
    topicAndBulletTextModel3.dispose();
    topicAndBulletTextModel4.dispose();
    topicAndBulletWithBorderModel2.dispose();
    topicAndBulletTextModel5.dispose();
    topicAndBulletTextModel6.dispose();
    topicAndBulletWithBorderModel3.dispose();
    topicAndBulletTextModel7.dispose();
    topicAndBulletTextModel8.dispose();
    topicAndBulletTextModel9.dispose();
  }
}
