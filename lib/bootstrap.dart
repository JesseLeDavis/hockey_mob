import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:bloc/bloc.dart';
import 'package:hockey_mob/infrastructure/config/app_environment.dart';
import 'package:hockey_mob/infrastructure/config/environment_config.dart';
import 'package:hockey_mob/infrastructure/injection/injection.dart';
import 'package:hockey_mob/persistance/hive_data_store.dart';

import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  final _logger = Logger();

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.i('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.e('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap({
  required FutureOr<Widget> Function() builder,
  FutureOr<void> Function()? initializeFirebase,
  Logger? logger,
}) async {
  logger ??= Logger();
  WidgetsFlutterBinding.ensureInitialized();

  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  configureDependencies(EnvironmentConfig.appEnvironment.toFormattedString());

  // FlutterError.onError = (details) {
  //   logger!.e(details.exceptionAsString(), details.exception, details.stack);
  // };

  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  //* INITIALIZED DATA STORE

  await getIt<HiveDataStore>().init();

  await runZonedGuarded(
    () async {
      Bloc.observer = AppBlocObserver();

      runApp(await builder());
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
