import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//* used to secure important local data in the app

class SecureStorageService {
  //apply singleton pattern
  SecureStorageService._();
  static final SecureStorageService _instance = SecureStorageService._();
  //* this helps me to take instance of SecureStorageService and access to class
  factory SecureStorageService() => _instance;
  static SecureStorageService get instance => _instance;

  static FlutterSecureStorage? _secureStorage;

  Future<void> init() async {
    _secureStorage = FlutterSecureStorage();
  }

  Future<void> setValue({required String key, required String value}) async {
    await _secureStorage?.write(key: key, value: value);
  }

  Future<String?> getValue({required String key}) async {
    return _secureStorage?.read(key: key);
  }
  Future<bool?> containsKey({required String key}) async {
    return await _secureStorage?.containsKey(key: key);
  }

  Future<Map<String, dynamic>?> getAllValue() async {
    return _secureStorage?.readAll();
  }

  Future<void> deleteValue({required String key}) async {
    await _secureStorage?.delete(key: key);
  }

  Future<void> deleteAllValue() async {
    await _secureStorage?.deleteAll();
  }
}
