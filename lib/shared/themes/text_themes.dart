import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Project imports:

abstract class TextThemes {}

abstract class ITextTheme {
  ///fontSize: 40
  TextStyle get header1;

  ///fontSize: 32
  ///fontWeight: FontWeight.w400
  TextStyle get header2;

  ///fontSize: 24
  TextStyle get header3;

  ///fontSize: 20
  TextStyle get subtitle1;

  ///fontSize: 20
  ///fontWeight: FontWeight.w400
  TextStyle get subtitle2;

  ///fontSize: 16
  TextStyle get body1;

  ///fontSize: 16
  ///fontWeight: FontWeight.w400
  TextStyle get body2;

  ///fontSize: 12
  TextStyle get caption1;

  ///fontSize: 14
  TextStyle get caption2;

  ///fontSize: 10
  TextStyle get caption3;

  TextStyle get boldCaption;

  TextStyle get passwordRequirement;
}

class _CTextTheme implements ITextTheme {
  factory _CTextTheme({
    final FontWeight? weight,
    final Color? color,
  }) {
    final _base = TextStyle(
      fontFamily: GoogleFonts.outfit().fontFamily,
      fontWeight: weight,
      color: color,
    );

    final caption1 = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    );

    final caption3 = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 10,
    );

    final caption2 = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );

    final body1 = _base.copyWith(
      fontSize: 16,
    );

    final passwordRequirement = _base.copyWith(
      fontSize: 27,
    );

    final body2 = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    );

    final subtitle1 = _base.copyWith(
      fontSize: 20,
    );

    final subtitle2 = _base.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 20,
    );

    final header1 = _base.copyWith(
      fontSize: 40,
    );

    final header2 = _base.copyWith(
      fontSize: 32,
    );

    final header3 = _base.copyWith(
      fontSize: 24,
    );
    final boldCaption = _base.copyWith(
      fontSize: 21,
      fontWeight: FontWeight.w700,
    );
    return _CTextTheme._(
      body1,
      body2,
      subtitle1,
      subtitle2,
      caption1,
      caption2,
      caption3,
      header1,
      header2,
      header3,
      boldCaption,
      passwordRequirement,
    );
  }

  _CTextTheme._(
    this._body1,
    this._body2,
    this._subtitle1,
    this._subtitle2,
    this._caption1,
    this._caption2,
    this._caption3,
    this._header1,
    this._header2,
    this._header3,
    this._boldCaption,
    this._passwordRequirement,
  );

  final TextStyle _body1;
  final TextStyle _body2;
  final TextStyle _subtitle1;
  final TextStyle _subtitle2;
  final TextStyle _caption1;
  final TextStyle _caption2;
  final TextStyle _caption3;
  final TextStyle _header1;
  final TextStyle _header2;
  final TextStyle _header3;
  final TextStyle _boldCaption;
  final TextStyle _passwordRequirement;

  @override
  TextStyle get body1 => _body1;

  @override
  TextStyle get body2 => _body2;

  @override
  TextStyle get subtitle1 => _subtitle1;

  @override
  TextStyle get subtitle2 => _subtitle2;

  @override
  TextStyle get caption1 => _caption1;

  @override
  TextStyle get caption2 => _caption2;

  @override
  TextStyle get caption3 => _caption3;

  @override
  TextStyle get header1 => _header1;

  @override
  TextStyle get header2 => _header2;

  @override
  TextStyle get header3 => _header3;

  @override
  TextStyle get boldCaption => _boldCaption;

  @override
  TextStyle get passwordRequirement => _passwordRequirement;
}
