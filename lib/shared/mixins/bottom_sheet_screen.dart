import 'package:flutter/material.dart';

// ignore: one_member_abstracts
abstract class BottomSheetScreen<T> {
  Future<T?> open(BuildContext context);
}
