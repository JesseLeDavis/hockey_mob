import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectionModule {
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  LocalAuthentication get localAuthentication => LocalAuthentication();
}
