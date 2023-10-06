import 'package:flutter/services.dart';

abstract class Vibrate {
  const Vibrate._();

  static Future<void> error() async {
    await HapticFeedback.lightImpact();
    await Future<void>.delayed(const Duration(milliseconds: 100));
    await HapticFeedback.lightImpact();
  }

  static void buttonPress() {
    HapticFeedback.lightImpact();
  }

  static void navigation() {
    HapticFeedback.lightImpact();
  }
}
