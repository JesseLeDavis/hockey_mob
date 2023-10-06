// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/infrastructure/api_error/api_error.dart';

// Package imports:
import 'package:intl/intl.dart';

// Project imports:

class JsonHelper {
// Format for javascript string is yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
// Converts String into Dart DateTime Object
  static DateTime dateFromJson(String stringDate) =>
      DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(stringDate);

  // Format for javascript string is yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
// Converts String into Dart DateTime Object
  static DateTime fromSecondsSinceEpoch(int seconds) =>
      DateTime.fromMillisecondsSinceEpoch(seconds * 1000);

  // Format for javascript string is yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
// Converts String into Dart DateTime Object
  static DateTime dateFromMicrosecondsSinceEpoch(int microsecondsSinceEpoch) =>
      DateTime.fromMicrosecondsSinceEpoch(microsecondsSinceEpoch);

  // Format for Dart DateTime object is yyyy-mm-dd tt:tt:tt.ttt
  // Converts DateTime object into dd/mm/yyyy string
  static String dateToJson(DateTime dateTimeDate) =>
      DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(dateTimeDate);

  static DateTime? dateFromJsonNullable(String? stringDate) =>
      stringDate == null
          ? null
          : DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(stringDate);

  static ApiError apiErrorFromJson(int errorCode) =>
      ApiErrorExtension.errorFromCode(errorCode);

  static List<String> dateRangeToJson(DateTimeRange dateTimeRange) => [
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(dateTimeRange.start),
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(dateTimeRange.end)
      ];

  static DateTimeRange dateRangeFromJson(List<String> dateTimeList) =>
      DateTimeRange(
        start:
            DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(dateTimeList[0]),
        end: DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(dateTimeList[1]),
      );
}
