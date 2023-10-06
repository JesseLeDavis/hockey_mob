// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_code.model.freezed.dart';
part 'country_code.model.g.dart';

@freezed
class CountryCode with _$CountryCode {
  const factory CountryCode({
    /// the name of the country
    required String name,

    /// the dial code (+39,+93..)
    required String code,

    ///the countries code
    required String iso,
  }) = _CountryCode;
  const CountryCode._();

  factory CountryCode.fromJson(Map<String, dynamic> json) =>
      _$CountryCodeFromJson(json);

  String get formatWithPlus => '+$code';
}
