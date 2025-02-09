import 'package:shared_preferences/shared_preferences.dart';

class PrefServices {
  PrefServices._();
  static final PrefServices _instance = PrefServices._();
  //* this helps me to take instance of SecureStorageService and access to class
  factory PrefServices() => _instance;
  static PrefServices get instance => _instance;

  static SharedPreferences? _sharedPreferences;

   init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

   Future<bool> saveData(
      {required String key, required dynamic value}) async {
    if (value is String) {
      return await _sharedPreferences!.setString(key, value);
    } else if (value is int) {
      return await _sharedPreferences!.setInt(key, value);
    } else if (value is double) {
      return await _sharedPreferences!.setDouble(key, value);
    } else {
      return await _sharedPreferences!.setBool(key, value);
    }
  }

   dynamic getData({required String key}) {
    return _sharedPreferences!.get(key);
  }

   bool containKey({required String key}) {
    return _sharedPreferences!.containsKey(key);
  }

   Future<bool> removeValue(key) async {
    return await _sharedPreferences!.remove(key);
  }

   Future<bool> clearAllData() async {
    return await _sharedPreferences!.clear();
  }
}
