import 'package:hockey_mob/infrastructure/config/app_environment.dart';

class EnvironmentConfig {
  static AppEnvironment appEnvironment = AppEnvironmentString.fromString(
    const String.fromEnvironment(
      'ENVIRONMENT',
      defaultValue: 'production',
    ),
  );
}
