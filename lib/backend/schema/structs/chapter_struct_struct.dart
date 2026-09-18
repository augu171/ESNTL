// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChapterStructStruct extends BaseStruct {
  ChapterStructStruct({
    String? chapterName,
    String? chapterDescription,
    String? chapterNumber,
    int? chapterCompletionPercentage,
  })  : _chapterName = chapterName,
        _chapterDescription = chapterDescription,
        _chapterNumber = chapterNumber,
        _chapterCompletionPercentage = chapterCompletionPercentage;

  // "chapterName" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  set chapterName(String? val) => _chapterName = val;

  bool hasChapterName() => _chapterName != null;

  // "chapterDescription" field.
  String? _chapterDescription;
  String get chapterDescription => _chapterDescription ?? '';
  set chapterDescription(String? val) => _chapterDescription = val;

  bool hasChapterDescription() => _chapterDescription != null;

  // "chapterNumber" field.
  String? _chapterNumber;
  String get chapterNumber => _chapterNumber ?? '';
  set chapterNumber(String? val) => _chapterNumber = val;

  bool hasChapterNumber() => _chapterNumber != null;

  // "chapterCompletionPercentage" field.
  int? _chapterCompletionPercentage;
  int get chapterCompletionPercentage => _chapterCompletionPercentage ?? 0;
  set chapterCompletionPercentage(int? val) =>
      _chapterCompletionPercentage = val;

  void incrementChapterCompletionPercentage(int amount) =>
      chapterCompletionPercentage = chapterCompletionPercentage + amount;

  bool hasChapterCompletionPercentage() => _chapterCompletionPercentage != null;

  static ChapterStructStruct fromMap(Map<String, dynamic> data) =>
      ChapterStructStruct(
        chapterName: data['chapterName'] as String?,
        chapterDescription: data['chapterDescription'] as String?,
        chapterNumber: data['chapterNumber'] as String?,
        chapterCompletionPercentage:
            castToType<int>(data['chapterCompletionPercentage']),
      );

  static ChapterStructStruct? maybeFromMap(dynamic data) => data is Map
      ? ChapterStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'chapterName': _chapterName,
        'chapterDescription': _chapterDescription,
        'chapterNumber': _chapterNumber,
        'chapterCompletionPercentage': _chapterCompletionPercentage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chapterName': serializeParam(
          _chapterName,
          ParamType.String,
        ),
        'chapterDescription': serializeParam(
          _chapterDescription,
          ParamType.String,
        ),
        'chapterNumber': serializeParam(
          _chapterNumber,
          ParamType.String,
        ),
        'chapterCompletionPercentage': serializeParam(
          _chapterCompletionPercentage,
          ParamType.int,
        ),
      }.withoutNulls;

  static ChapterStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChapterStructStruct(
        chapterName: deserializeParam(
          data['chapterName'],
          ParamType.String,
          false,
        ),
        chapterDescription: deserializeParam(
          data['chapterDescription'],
          ParamType.String,
          false,
        ),
        chapterNumber: deserializeParam(
          data['chapterNumber'],
          ParamType.String,
          false,
        ),
        chapterCompletionPercentage: deserializeParam(
          data['chapterCompletionPercentage'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ChapterStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChapterStructStruct &&
        chapterName == other.chapterName &&
        chapterDescription == other.chapterDescription &&
        chapterNumber == other.chapterNumber &&
        chapterCompletionPercentage == other.chapterCompletionPercentage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        chapterName,
        chapterDescription,
        chapterNumber,
        chapterCompletionPercentage
      ]);
}

ChapterStructStruct createChapterStructStruct({
  String? chapterName,
  String? chapterDescription,
  String? chapterNumber,
  int? chapterCompletionPercentage,
}) =>
    ChapterStructStruct(
      chapterName: chapterName,
      chapterDescription: chapterDescription,
      chapterNumber: chapterNumber,
      chapterCompletionPercentage: chapterCompletionPercentage,
    );
