// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteItemStruct extends BaseStruct {
  FavoriteItemStruct({
    /// 	Identificador único del favorito (ej: "Views1")
    String? id,

    /// Texto a mostrar en el botón (ej: "VIEWS")
    String? label,

    /// Nombre exacto de la pantalla a la que navega
    String? screenName,

    /// icono
    String? itemRef,
  })  : _id = id,
        _label = label,
        _screenName = screenName,
        _itemRef = itemRef;

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "screenName" field.
  String? _screenName;
  String get screenName => _screenName ?? '';
  set screenName(String? val) => _screenName = val;

  bool hasScreenName() => _screenName != null;

  // "itemRef" field.
  String? _itemRef;
  String get itemRef => _itemRef ?? '';
  set itemRef(String? val) => _itemRef = val;

  bool hasItemRef() => _itemRef != null;

  static FavoriteItemStruct fromMap(Map<String, dynamic> data) =>
      FavoriteItemStruct(
        id: data['Id'] as String?,
        label: data['label'] as String?,
        screenName: data['screenName'] as String?,
        itemRef: data['itemRef'] as String?,
      );

  static FavoriteItemStruct? maybeFromMap(dynamic data) => data is Map
      ? FavoriteItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Id': _id,
        'label': _label,
        'screenName': _screenName,
        'itemRef': _itemRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Id': serializeParam(
          _id,
          ParamType.String,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'screenName': serializeParam(
          _screenName,
          ParamType.String,
        ),
        'itemRef': serializeParam(
          _itemRef,
          ParamType.String,
        ),
      }.withoutNulls;

  static FavoriteItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      FavoriteItemStruct(
        id: deserializeParam(
          data['Id'],
          ParamType.String,
          false,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        screenName: deserializeParam(
          data['screenName'],
          ParamType.String,
          false,
        ),
        itemRef: deserializeParam(
          data['itemRef'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FavoriteItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FavoriteItemStruct &&
        id == other.id &&
        label == other.label &&
        screenName == other.screenName &&
        itemRef == other.itemRef;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, label, screenName, itemRef]);
}

FavoriteItemStruct createFavoriteItemStruct({
  String? id,
  String? label,
  String? screenName,
  String? itemRef,
}) =>
    FavoriteItemStruct(
      id: id,
      label: label,
      screenName: screenName,
      itemRef: itemRef,
    );
