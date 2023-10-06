import 'package:flutter_project_template_firebase/infrastructure/config/app_environment.dart';

class EnvironmentConfig {
  static AppEnvironment appEnvironment = AppEnvironmentString.fromString(
    const String.fromEnvironment(
      'ENVIRONMENT',
      defaultValue: 'production',
    ),
  );
}
