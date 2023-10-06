import 'package:flutter/material.dart';

enum Flavor {
  development,
  staging,
  production,
}

extension FlavorExtension on Flavor {
  Color get color {
    switch (this) {
      case Flavor.development:
        return Colors.red;
      case Flavor.staging:
        return Colors.blue;
      case Flavor.production:
        return Colors.transparent;
    }
  }
}
