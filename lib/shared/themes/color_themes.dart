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
  // ======= GENERIC ========
  static const Color pureWhite = Color(0xFFFFFFFF);
  static const Color pureBlack = Color(0xFF000000);
  // ======= NEUTRAL ========
  static const Color neutral50 = Color(0xFFFAFAFA);
  static const Color neutral100 = Color(0xFFF5F5F5);
  static const Color neutral200 = Color(0xFFE5E5E5);
  static const Color neutral300 = Color(0xFFD4D4D4);
  static const Color neutral400 = Color(0xFFA3A3A3);
  static const Color neutral500 = Color(0xFF737373);
  static const Color neutral600 = Color(0xFF525252);
  static const Color neutral700 = Color(0xFF404040);
  static const Color neutral800 = Color(0xFF262626);
  static const Color neutral900 = Color(0xFF171717);
  // ======= PRIMARY ========
  static const Color primary = Color(0xFF2454FF);
  // ======= UTILITY ========
  static const Color success = Color(0xFF00C165);
  static const Color alert = Color(0xFFDC2626);
  static const Color warning = Color(0xFFFB923C);
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
