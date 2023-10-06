// Flutter imports:
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Pallete {
  const Pallete({
    required this.light,
    required this.normal,
    required this.dark,
  });
  final Color light;
  final Color normal;
  final Color dark;
}

abstract class ColorThemes {

}

extension ColorExtension on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1, 'amount has to be between 0 and 1');

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1, 'amount has to be between 0 and 1');

    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  bool get isDark {
    final hsl = HSLColor.fromColor(this);
    return hsl.lightness < .5;
  }
}
