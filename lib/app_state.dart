import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _navbarNum = await secureStorage.getInt('ff_navbarNum') ?? _navbarNum;
    });
    await _safeInitAsync(() async {
      _favoritesList = (await secureStorage.getStringList('ff_favoritesList'))
              ?.map((x) {
                try {
                  return FavoriteItemStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _favoritesList;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_allChapters') != null) {
        try {
          _allChapters =
              jsonDecode(await secureStorage.getString('ff_allChapters') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  /// Botón actual del navBar
  int _navbarNum = 0;
  int get navbarNum => _navbarNum;
  set navbarNum(int value) {
    _navbarNum = value;
    secureStorage.setInt('ff_navbarNum', value);
  }

  void deleteNavbarNum() {
    secureStorage.delete(key: 'ff_navbarNum');
  }

  List<FavoriteItemStruct> _favoritesList = [];
  List<FavoriteItemStruct> get favoritesList => _favoritesList;
  set favoritesList(List<FavoriteItemStruct> value) {
    _favoritesList = value;
    secureStorage.setStringList(
        'ff_favoritesList', value.map((x) => x.serialize()).toList());
  }

  void deleteFavoritesList() {
    secureStorage.delete(key: 'ff_favoritesList');
  }

  void addToFavoritesList(FavoriteItemStruct value) {
    favoritesList.add(value);
    secureStorage.setStringList(
        'ff_favoritesList', _favoritesList.map((x) => x.serialize()).toList());
  }

  void removeFromFavoritesList(FavoriteItemStruct value) {
    favoritesList.remove(value);
    secureStorage.setStringList(
        'ff_favoritesList', _favoritesList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFavoritesList(int index) {
    favoritesList.removeAt(index);
    secureStorage.setStringList(
        'ff_favoritesList', _favoritesList.map((x) => x.serialize()).toList());
  }

  void updateFavoritesListAtIndex(
    int index,
    FavoriteItemStruct Function(FavoriteItemStruct) updateFn,
  ) {
    favoritesList[index] = updateFn(_favoritesList[index]);
    secureStorage.setStringList(
        'ff_favoritesList', _favoritesList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFavoritesList(int index, FavoriteItemStruct value) {
    favoritesList.insert(index, value);
    secureStorage.setStringList(
        'ff_favoritesList', _favoritesList.map((x) => x.serialize()).toList());
  }

  dynamic _allChapters = jsonDecode(
      '[{\"chapterName\":\"Física básica\",\"chapterDescription\":\"Conceptos clave para entender cómo funciona la RMC.\",\"chapterNumber\":\"1.1\",\"chapterCompletionPercentage\":25},{\"chapterName\":\"Secuencias\",\"chapterDescription\":\"Tipos de secuencias, parámetros y aplicaciones clínicas.\",\"chapterNumber\":\"1.2\",\"chapterCompletionPercentage\":75},{\"chapterName\":\"Planos y anatomía cardíaca\",\"chapterDescription\":\"Orientación espacial, planos estándar y referencias anatómicas.\",\"chapterNumber\":\"1.3\",\"chapterCompletionPercentage\":25},{\"chapterName\":\"Topografía cardíaca\",\"chapterDescription\":\"Caras y capas del corazón, segmentación (modelo AHA 17 s)\",\"chapterNumber\":\"1.3.1\",\"chapterCompletionPercentage\":25},{\"chapterName\":\"Ejes izquierdos\",\"chapterDescription\":\"Ejes largos izquierdos y segmentos (4C, 3C, 2C)\",\"chapterNumber\":\"1.3.2\",\"chapterCompletionPercentage\":50},{\"chapterName\":\"Planos y anatomía cardíaca\",\"chapterDescription\":\"Orientación espacial, planos estándar y referencias anatómicas.\",\"chapterNumber\":\"1.3.3\",\"chapterCompletionPercentage\":70}]');
  dynamic get allChapters => _allChapters;
  set allChapters(dynamic value) {
    _allChapters = value;
    secureStorage.setString('ff_allChapters', jsonEncode(value));
  }

  void deleteAllChapters() {
    secureStorage.delete(key: 'ff_allChapters');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
