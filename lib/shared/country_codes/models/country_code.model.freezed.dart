// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country_code.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryCode _$CountryCodeFromJson(Map<String, dynamic> json) {
  return _CountryCode.fromJson(json);
}

/// @nodoc
mixin _$CountryCode {
  /// the name of the country
  String get name => throw _privateConstructorUsedError;

  /// the dial code (+39,+93..)
  String get code => throw _privateConstructorUsedError;

  ///the countries code
  String get iso => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCodeCopyWith<CountryCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCodeCopyWith<$Res> {
  factory $CountryCodeCopyWith(
          CountryCode value, $Res Function(CountryCode) then) =
      _$CountryCodeCopyWithImpl<$Res>;
  $Res call({String name, String code, String iso});
}

/// @nodoc
class _$CountryCodeCopyWithImpl<$Res> implements $CountryCodeCopyWith<$Res> {
  _$CountryCodeCopyWithImpl(this._value, this._then);

  final CountryCode _value;
  // ignore: unused_field
  final $Res Function(CountryCode) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? iso = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CountryCodeCopyWith<$Res>
    implements $CountryCodeCopyWith<$Res> {
  factory _$$_CountryCodeCopyWith(
          _$_CountryCode value, $Res Function(_$_CountryCode) then) =
      __$$_CountryCodeCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code, String iso});
}

/// @nodoc
class __$$_CountryCodeCopyWithImpl<$Res> extends _$CountryCodeCopyWithImpl<$Res>
    implements _$$_CountryCodeCopyWith<$Res> {
  __$$_CountryCodeCopyWithImpl(
      _$_CountryCode _value, $Res Function(_$_CountryCode) _then)
      : super(_value, (v) => _then(v as _$_CountryCode));

  @override
  _$_CountryCode get _value => super._value as _$_CountryCode;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? iso = freezed,
  }) {
    return _then(_$_CountryCode(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryCode extends _CountryCode {
  const _$_CountryCode(
      {required this.name, required this.code, required this.iso})
      : super._();

  factory _$_CountryCode.fromJson(Map<String, dynamic> json) =>
      _$$_CountryCodeFromJson(json);

  /// the name of the country
  @override
  final String name;

  /// the dial code (+39,+93..)
  @override
  final String code;

  ///the countries code
  @override
  final String iso;

  @override
  String toString() {
    return 'CountryCode(name: $name, code: $code, iso: $iso)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryCode &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.iso, iso));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(iso));

  @JsonKey(ignore: true)
  @override
  _$$_CountryCodeCopyWith<_$_CountryCode> get copyWith =>
      __$$_CountryCodeCopyWithImpl<_$_CountryCode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryCodeToJson(
      this,
    );
  }
}

abstract class _CountryCode extends CountryCode {
  const factory _CountryCode(
      {required final String name,
      required final String code,
      required final String iso}) = _$_CountryCode;
  const _CountryCode._() : super._();

  factory _CountryCode.fromJson(Map<String, dynamic> json) =
      _$_CountryCode.fromJson;

  @override

  /// the name of the country
  String get name;
  @override

  /// the dial code (+39,+93..)
  String get code;
  @override

  ///the countries code
  String get iso;
  @override
  @JsonKey(ignore: true)
  _$$_CountryCodeCopyWith<_$_CountryCode> get copyWith =>
      throw _privateConstructorUsedError;
}
