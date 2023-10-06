// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get toServerFormat =>
      DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(this);

  String get toServerFormatWithoutTime =>
      DateFormat("yyyy-MM-dd'T'00:00:00.000'Z'").format(this);

 
}

extension DateRangeExtension on DateTimeRange {
  static final List<String> _months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  String get toFormattedString =>
      '${start.day} ${_months[start.month - 1].substring(0, 3)} - ${end.day} ${_months[end.month - 1].substring(0, 3)}';
}
