import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:localstorage/localstorage.dart';



// Project imports:

@singleton
class SecureLocalStorage {
  final _storage = LocalStorage('data.json');
  final _secureStorage = const FlutterSecureStorage();

  final String _kPushToken = 'pushToken';
  final String kUser = 'user';
  final String _localAuth = 'local_auth';
  final String _email = 'email';
  final String _password = 'password';

  Future<void> setPushToken(String pushToken) => _secureStorage.write(
        key: _kPushToken,
        value: pushToken,
      );

  Future<String?> get getPushToken async => _secureStorage.read(
        key: _kPushToken,
      );

  Future<void> setLocalAuth(String enabled) => _secureStorage.write(
        key: _localAuth,
        value: enabled,
      );

  Future<String?> get getLocalAuth async => _secureStorage.read(
        key: _localAuth,
      );

  Future<void> setEmail(String email) => _secureStorage.write(
        key: _email,
        value: email,
      );

  Future<String?> get getEmail async => _secureStorage.read(
        key: _email,
      );

  Future<void> get deleteEmail async => _secureStorage.delete(
        key: _email,
      );

  Future<void> get deletePassword async => _secureStorage.delete(
        key: _password,
      );

  Future<void> setPassword(String password) => _secureStorage.write(
        key: _password,
        value: password,
      );

  Future<String?> get getPassword async => _secureStorage.read(
        key: _password,
      );




  Future<void> deleteUser() => _storage.deleteItem(kUser);
}
