// Project imports:

enum AppEnvironment {
  dev,
  prod,
  staging,
  other,
}

extension AppEnvironmentString on AppEnvironment {
  static AppEnvironment fromString(String value) {
    switch (value) {
      case 'dev':
        return AppEnvironment.dev;
      case 'staging':
        return AppEnvironment.staging;
      case 'prod':
        return AppEnvironment.prod;

      default:
        return AppEnvironment.prod;
    }
  }

  String toFormattedString() {
    switch (this) {
      case AppEnvironment.prod:
        return 'prod';
      case AppEnvironment.dev:
        return 'dev';
      case AppEnvironment.staging:
        return 'staging';
      case AppEnvironment.other:
        return 'other';
    }
  }
}
