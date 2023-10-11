// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CountryCodeCopyWithImpl<$Res, CountryCode>;
  @useResult
  $Res call({String name, String code, String iso});
}

/// @nodoc
class _$CountryCodeCopyWithImpl<$Res, $Val extends CountryCode>
    implements $CountryCodeCopyWith<$Res> {
  _$CountryCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? iso = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      iso: null == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryCodeImplCopyWith<$Res>
    implements $CountryCodeCopyWith<$Res> {
  factory _$$CountryCodeImplCopyWith(
          _$CountryCodeImpl value, $Res Function(_$CountryCodeImpl) then) =
      __$$CountryCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String code, String iso});
}

/// @nodoc
class __$$CountryCodeImplCopyWithImpl<$Res>
    extends _$CountryCodeCopyWithImpl<$Res, _$CountryCodeImpl>
    implements _$$CountryCodeImplCopyWith<$Res> {
  __$$CountryCodeImplCopyWithImpl(
      _$CountryCodeImpl _value, $Res Function(_$CountryCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? iso = null,
  }) {
    return _then(_$CountryCodeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      iso: null == iso
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryCodeImpl extends _CountryCode {
  const _$CountryCodeImpl(
      {required this.name, required this.code, required this.iso})
      : super._();

  factory _$CountryCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryCodeImplFromJson(json);

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
            other is _$CountryCodeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.iso, iso) || other.iso == iso));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, iso);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryCodeImplCopyWith<_$CountryCodeImpl> get copyWith =>
      __$$CountryCodeImplCopyWithImpl<_$CountryCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryCodeImplToJson(
      this,
    );
  }
}

abstract class _CountryCode extends CountryCode {
  const factory _CountryCode(
      {required final String name,
      required final String code,
      required final String iso}) = _$CountryCodeImpl;
  const _CountryCode._() : super._();

  factory _CountryCode.fromJson(Map<String, dynamic> json) =
      _$CountryCodeImpl.fromJson;

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
  _$$CountryCodeImplCopyWith<_$CountryCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
