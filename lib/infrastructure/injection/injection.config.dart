// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_project_template_firebase/infrastructure/injection/injection_module.dart'
    as _i7;
import 'package:flutter_project_template_firebase/infrastructure/secure_local_storage/lsecure_local_storage.dart'
    as _i5;
import 'package:flutter_project_template_firebase/routes/router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:local_auth/local_auth.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectionModule = _$InjectionModule();
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    gh.factory<_i4.LocalAuthentication>(
        () => injectionModule.localAuthentication);
    gh.singleton<_i5.SecureLocalStorage>(_i5.SecureLocalStorage());
    gh.factoryAsync<_i6.SharedPreferences>(() => injectionModule.prefs);
    return this;
  }
}

class _$InjectionModule extends _i7.InjectionModule {}
