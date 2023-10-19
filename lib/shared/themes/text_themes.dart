import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';
import 'package:google_fonts/google_fonts.dart';

// Project imports:

abstract class TextThemes {
  static String get fontFamily => GoogleFonts.inter().fontFamily ?? '';

  static _ITextTheme get primary => _CTextTheme(color: ColorThemes.primary);

  static _ITextTheme get pureWhite => _CTextTheme(color: ColorThemes.pureWhite);

  static _ITextTheme get neutral100 =>
      _CTextTheme(color: ColorThemes.neutral100);

  static _ITextTheme get neutral200 =>
      _CTextTheme(color: ColorThemes.neutral200);

  static _ITextTheme get neutral300 =>
      _CTextTheme(color: ColorThemes.neutral300);

  static _ITextTheme get pureBlack => _CTextTheme(color: ColorThemes.pureBlack);

  static _ITextTheme get error => _CTextTheme(color: ColorThemes.alert);
}

abstract class _ITextTheme {
  TextStyle get displayLarge;

  TextStyle get largeTitle;

  TextStyle get title1;

  TextStyle get title2;

  TextStyle get title3;

  TextStyle get headline;

  TextStyle get body;

  TextStyle get callout;

  TextStyle get subhead;

  TextStyle get footnote;

  TextStyle get caption;
}

class _CTextTheme implements _ITextTheme {
  factory _CTextTheme({
    final FontWeight? weight,
    final Color? color,
  }) {
    final _base = TextStyle(
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: weight,
      letterSpacing: -0.8,
      color: color,
    );

    final displayLarge = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 40,
    );

    final largeTitle = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 32,
    );

    final title1 = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 26,
    );

    final title2 = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 20,
    );

    final title3 = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 18,
    );

    final headline = _base.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );

    final body = _base.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    );

    final callout = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );

    final subhead = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );

    final footnote = _base.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    );

    final caption = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 11,
    );

    return _CTextTheme._(
      headline,
      body,
      title2,
      title3,
      callout,
      subhead,
      caption,
      displayLarge,
      largeTitle,
      title1,
      footnote,
    );
  }

  _CTextTheme._(
    this._headline,
    this._body,
    this._title2,
    this._title3,
    this._callout,
    this._subhead,
    this._caption,
    this._displayLarge,
    this._largeTitle,
    this._title1,
    this._footnote,
  );

  final TextStyle _headline;
  final TextStyle _body;
  final TextStyle _title2;
  final TextStyle _title3;
  final TextStyle _callout;
  final TextStyle _subhead;
  final TextStyle _caption;
  final TextStyle _displayLarge;
  final TextStyle _largeTitle;
  final TextStyle _title1;
  final TextStyle _footnote;

  @override
  TextStyle get headline => _headline;

  @override
  TextStyle get body => _body;

  @override
  TextStyle get title2 => _title2;

  @override
  TextStyle get title3 => _title3;

  @override
  TextStyle get callout => _callout;

  @override
  TextStyle get subhead => _subhead;

  @override
  TextStyle get caption => _caption;

  @override
  TextStyle get displayLarge => _displayLarge;

  @override
  TextStyle get largeTitle => _largeTitle;

  @override
  TextStyle get title1 => _title1;

  @override
  TextStyle get footnote => _footnote;
}
