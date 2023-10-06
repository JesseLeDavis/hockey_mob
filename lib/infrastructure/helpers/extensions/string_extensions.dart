// Package imports:

import 'package:intl/intl.dart';

extension StringExtensions on String {
  String capitalize() {
    if (this == '') return this;
    final _finalString = StringBuffer();
    final _l = trim().split(' ');
    for (var i = 0; i < _l.length; i++) {
      final _s = _l[i];
      if (_s == '') continue;
      _finalString
          .write('${_s.substring(0, 1).toUpperCase()}${_s.substring(1)} ');
    }
    return _finalString.toString().trim();
  }

  bool get isPhoneNumber {
    final _check =
        RegExp(r'^(\+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\- ]*$');
    return _check.hasMatch(this);
  }

  bool get isEmail {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(this);
  }

  bool get isUsername {
    return RegExp(r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$').hasMatch(this);
  }

  String replaceEscapedSpace() {
    return replaceAll('%20', ' ');
  }

  String cleanSpacing() {
    return replaceAll(RegExp('/  +/g'), ' ');
  }

  bool get isLink {
    return contains('https');
  }

  String phoneToE164() {
    final formattedPhone = replaceAll('-', '')
        .replaceAll('(', '')
        .replaceAll(')', '')
        .replaceAll(' ', '');

    return '+1$formattedPhone';
  }

  String makeAscii() => replaceAll(RegExp(r'[^\x00-\x7F]+'), '');

  String pluralize(num amount) {
    if (this == '' || amount.abs() == 1) return this;
    final _lastLetter = substring(length - 1);
    if (_lastLetter == 's') return this;
    if (_lastLetter == 'h' || _lastLetter == 'x') return '${this}es';
    return '${this}s';
  }

  DateTime? isValidDate() {
    try {
      return DateFormat('dd/MM/yyyy').parseStrict(this);
    } catch (e) {
      return null;
    }
  }

  static String formatDateTime(DateTime date) =>
      DateFormat('dd/MM/yyyy').format(date);

  static String onlyTimeInDate(DateTime date) => DateFormat.jm().format(date);

  // String formatPhoneNumber(String isoCode) {
  //   final country = CountryManager()
  //       .countries
  //       .firstWhere((country) => country.countryCode == isoCode);

  //   return FlutterLibphonenumber().formatNumberSync(
  //     this,
  //     country: country,
  //     phoneNumberFormat: PhoneNumberFormat.national,

  //   );
  // }

  String get extractFirstName {
    final words = split(' ');

    if (words.isEmpty) return '';

    return words.first;
  }

  String get extractLastName {
    final words = split(' ');

    if (words.length < 2) return '';

    return words.last;
  }
}
