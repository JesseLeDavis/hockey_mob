// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_sizes.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MobileSize _$MobileSizeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'landscape':
      return _MobileSizeLandscape.fromJson(json);
    case 'portrait':
      return _MobileSizePortrait.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MobileSize',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MobileSize {
  /// Maximum size of small mobile phone
  double get small => throw _privateConstructorUsedError;

  /// Maximum size of middle mobile phone
  double get medium => throw _privateConstructorUsedError;

  /// Maximum size of large mobile phone
  double get large => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double small, double medium, double large)
        landscape,
    required TResult Function(double small, double medium, double large)
        portrait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double small, double medium, double large)? landscape,
    TResult? Function(double small, double medium, double large)? portrait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double small, double medium, double large)? landscape,
    TResult Function(double small, double medium, double large)? portrait,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MobileSizeLandscape value) landscape,
    required TResult Function(_MobileSizePortrait value) portrait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MobileSizeLandscape value)? landscape,
    TResult? Function(_MobileSizePortrait value)? portrait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MobileSizeLandscape value)? landscape,
    TResult Function(_MobileSizePortrait value)? portrait,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileSizeCopyWith<MobileSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileSizeCopyWith<$Res> {
  factory $MobileSizeCopyWith(
          MobileSize value, $Res Function(MobileSize) then) =
      _$MobileSizeCopyWithImpl<$Res, MobileSize>;
  @useResult
  $Res call({double small, double medium, double large});
}

/// @nodoc
class _$MobileSizeCopyWithImpl<$Res, $Val extends MobileSize>
    implements $MobileSizeCopyWith<$Res> {
  _$MobileSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as double,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as double,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MobileSizeLandscapeCopyWith<$Res>
    implements $MobileSizeCopyWith<$Res> {
  factory _$$_MobileSizeLandscapeCopyWith(_$_MobileSizeLandscape value,
          $Res Function(_$_MobileSizeLandscape) then) =
      __$$_MobileSizeLandscapeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double small, double medium, double large});
}

/// @nodoc
class __$$_MobileSizeLandscapeCopyWithImpl<$Res>
    extends _$MobileSizeCopyWithImpl<$Res, _$_MobileSizeLandscape>
    implements _$$_MobileSizeLandscapeCopyWith<$Res> {
  __$$_MobileSizeLandscapeCopyWithImpl(_$_MobileSizeLandscape _value,
      $Res Function(_$_MobileSizeLandscape) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$_MobileSizeLandscape(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as double,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as double,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MobileSizeLandscape implements _MobileSizeLandscape {
  const _$_MobileSizeLandscape(
      {this.small = 600,
      this.medium = 720,
      this.large = 960,
      final String? $type})
      : $type = $type ?? 'landscape';

  factory _$_MobileSizeLandscape.fromJson(Map<String, dynamic> json) =>
      _$$_MobileSizeLandscapeFromJson(json);

  /// Maximum size of small mobile phone
  @override
  @JsonKey()
  final double small;

  /// Maximum size of middle mobile phone
  @override
  @JsonKey()
  final double medium;

  /// Maximum size of large mobile phone
  @override
  @JsonKey()
  final double large;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MobileSize.landscape(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MobileSizeLandscape &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MobileSizeLandscapeCopyWith<_$_MobileSizeLandscape> get copyWith =>
      __$$_MobileSizeLandscapeCopyWithImpl<_$_MobileSizeLandscape>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double small, double medium, double large)
        landscape,
    required TResult Function(double small, double medium, double large)
        portrait,
  }) {
    return landscape(small, medium, large);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double small, double medium, double large)? landscape,
    TResult? Function(double small, double medium, double large)? portrait,
  }) {
    return landscape?.call(small, medium, large);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double small, double medium, double large)? landscape,
    TResult Function(double small, double medium, double large)? portrait,
    required TResult orElse(),
  }) {
    if (landscape != null) {
      return landscape(small, medium, large);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MobileSizeLandscape value) landscape,
    required TResult Function(_MobileSizePortrait value) portrait,
  }) {
    return landscape(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MobileSizeLandscape value)? landscape,
    TResult? Function(_MobileSizePortrait value)? portrait,
  }) {
    return landscape?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MobileSizeLandscape value)? landscape,
    TResult Function(_MobileSizePortrait value)? portrait,
    required TResult orElse(),
  }) {
    if (landscape != null) {
      return landscape(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MobileSizeLandscapeToJson(
      this,
    );
  }
}

abstract class _MobileSizeLandscape implements MobileSize {
  const factory _MobileSizeLandscape(
      {final double small,
      final double medium,
      final double large}) = _$_MobileSizeLandscape;

  factory _MobileSizeLandscape.fromJson(Map<String, dynamic> json) =
      _$_MobileSizeLandscape.fromJson;

  @override

  /// Maximum size of small mobile phone
  double get small;
  @override

  /// Maximum size of middle mobile phone
  double get medium;
  @override

  /// Maximum size of large mobile phone
  double get large;
  @override
  @JsonKey(ignore: true)
  _$$_MobileSizeLandscapeCopyWith<_$_MobileSizeLandscape> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MobileSizePortraitCopyWith<$Res>
    implements $MobileSizeCopyWith<$Res> {
  factory _$$_MobileSizePortraitCopyWith(_$_MobileSizePortrait value,
          $Res Function(_$_MobileSizePortrait) then) =
      __$$_MobileSizePortraitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double small, double medium, double large});
}

/// @nodoc
class __$$_MobileSizePortraitCopyWithImpl<$Res>
    extends _$MobileSizeCopyWithImpl<$Res, _$_MobileSizePortrait>
    implements _$$_MobileSizePortraitCopyWith<$Res> {
  __$$_MobileSizePortraitCopyWithImpl(
      _$_MobileSizePortrait _value, $Res Function(_$_MobileSizePortrait) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$_MobileSizePortrait(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as double,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as double,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MobileSizePortrait implements _MobileSizePortrait {
  const _$_MobileSizePortrait(
      {this.small = 360,
      this.medium = 400,
      this.large = 600,
      final String? $type})
      : $type = $type ?? 'portrait';

  factory _$_MobileSizePortrait.fromJson(Map<String, dynamic> json) =>
      _$$_MobileSizePortraitFromJson(json);

  /// Maximum size of small mobile phone
  @override
  @JsonKey()
  final double small;

  /// Maximum size of middle mobile phone
  @override
  @JsonKey()
  final double medium;

  /// Maximum size of large mobile phone
  @override
  @JsonKey()
  final double large;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MobileSize.portrait(small: $small, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MobileSizePortrait &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, medium, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MobileSizePortraitCopyWith<_$_MobileSizePortrait> get copyWith =>
      __$$_MobileSizePortraitCopyWithImpl<_$_MobileSizePortrait>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double small, double medium, double large)
        landscape,
    required TResult Function(double small, double medium, double large)
        portrait,
  }) {
    return portrait(small, medium, large);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double small, double medium, double large)? landscape,
    TResult? Function(double small, double medium, double large)? portrait,
  }) {
    return portrait?.call(small, medium, large);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double small, double medium, double large)? landscape,
    TResult Function(double small, double medium, double large)? portrait,
    required TResult orElse(),
  }) {
    if (portrait != null) {
      return portrait(small, medium, large);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MobileSizeLandscape value) landscape,
    required TResult Function(_MobileSizePortrait value) portrait,
  }) {
    return portrait(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MobileSizeLandscape value)? landscape,
    TResult? Function(_MobileSizePortrait value)? portrait,
  }) {
    return portrait?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MobileSizeLandscape value)? landscape,
    TResult Function(_MobileSizePortrait value)? portrait,
    required TResult orElse(),
  }) {
    if (portrait != null) {
      return portrait(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_MobileSizePortraitToJson(
      this,
    );
  }
}

abstract class _MobileSizePortrait implements MobileSize {
  const factory _MobileSizePortrait(
      {final double small,
      final double medium,
      final double large}) = _$_MobileSizePortrait;

  factory _MobileSizePortrait.fromJson(Map<String, dynamic> json) =
      _$_MobileSizePortrait.fromJson;

  @override

  /// Maximum size of small mobile phone
  double get small;
  @override

  /// Maximum size of middle mobile phone
  double get medium;
  @override

  /// Maximum size of large mobile phone
  double get large;
  @override
  @JsonKey(ignore: true)
  _$$_MobileSizePortraitCopyWith<_$_MobileSizePortrait> get copyWith =>
      throw _privateConstructorUsedError;
}

TabletSize _$TabletSizeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'landscape':
      return _TabletSizeLandscape.fromJson(json);
    case 'portrait':
      return _TabletSizePortrait.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TabletSize',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TabletSize {
  /// Maximum size of small tablet
  double get small => throw _privateConstructorUsedError;

  /// Maximum size of large tablet
  double get large => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double small, double large) landscape,
    required TResult Function(double small, double large) portrait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double small, double large)? landscape,
    TResult? Function(double small, double large)? portrait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double small, double large)? landscape,
    TResult Function(double small, double large)? portrait,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabletSizeLandscape value) landscape,
    required TResult Function(_TabletSizePortrait value) portrait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabletSizeLandscape value)? landscape,
    TResult? Function(_TabletSizePortrait value)? portrait,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabletSizeLandscape value)? landscape,
    TResult Function(_TabletSizePortrait value)? portrait,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TabletSizeCopyWith<TabletSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabletSizeCopyWith<$Res> {
  factory $TabletSizeCopyWith(
          TabletSize value, $Res Function(TabletSize) then) =
      _$TabletSizeCopyWithImpl<$Res, TabletSize>;
  @useResult
  $Res call({double small, double large});
}

/// @nodoc
class _$TabletSizeCopyWithImpl<$Res, $Val extends TabletSize>
    implements $TabletSizeCopyWith<$Res> {
  _$TabletSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as double,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TabletSizeLandscapeCopyWith<$Res>
    implements $TabletSizeCopyWith<$Res> {
  factory _$$_TabletSizeLandscapeCopyWith(_$_TabletSizeLandscape value,
          $Res Function(_$_TabletSizeLandscape) then) =
      __$$_TabletSizeLandscapeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double small, double large});
}

/// @nodoc
class __$$_TabletSizeLandscapeCopyWithImpl<$Res>
    extends _$TabletSizeCopyWithImpl<$Res, _$_TabletSizeLandscape>
    implements _$$_TabletSizeLandscapeCopyWith<$Res> {
  __$$_TabletSizeLandscapeCopyWithImpl(_$_TabletSizeLandscape _value,
      $Res Function(_$_TabletSizeLandscape) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? large = null,
  }) {
    return _then(_$_TabletSizeLandscape(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as double,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TabletSizeLandscape implements _TabletSizeLandscape {
  const _$_TabletSizeLandscape(
      {this.small = 1024, this.large = 1280, final String? $type})
      : $type = $type ?? 'landscape';

  factory _$_TabletSizeLandscape.fromJson(Map<String, dynamic> json) =>
      _$$_TabletSizeLandscapeFromJson(json);

  /// Maximum size of small tablet
  @override
  @JsonKey()
  final double small;

  /// Maximum size of large tablet
  @override
  @JsonKey()
  final double large;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TabletSize.landscape(small: $small, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabletSizeLandscape &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabletSizeLandscapeCopyWith<_$_TabletSizeLandscape> get copyWith =>
      __$$_TabletSizeLandscapeCopyWithImpl<_$_TabletSizeLandscape>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double small, double large) landscape,
    required TResult Function(double small, double large) portrait,
  }) {
    return landscape(small, large);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double small, double large)? landscape,
    TResult? Function(double small, double large)? portrait,
  }) {
    return landscape?.call(small, large);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double small, double large)? landscape,
    TResult Function(double small, double large)? portrait,
    required TResult orElse(),
  }) {
    if (landscape != null) {
      return landscape(small, large);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabletSizeLandscape value) landscape,
    required TResult Function(_TabletSizePortrait value) portrait,
  }) {
    return landscape(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabletSizeLandscape value)? landscape,
    TResult? Function(_TabletSizePortrait value)? portrait,
  }) {
    return landscape?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabletSizeLandscape value)? landscape,
    TResult Function(_TabletSizePortrait value)? portrait,
    required TResult orElse(),
  }) {
    if (landscape != null) {
      return landscape(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TabletSizeLandscapeToJson(
      this,
    );
  }
}

abstract class _TabletSizeLandscape implements TabletSize {
  const factory _TabletSizeLandscape({final double small, final double large}) =
      _$_TabletSizeLandscape;

  factory _TabletSizeLandscape.fromJson(Map<String, dynamic> json) =
      _$_TabletSizeLandscape.fromJson;

  @override

  /// Maximum size of small tablet
  double get small;
  @override

  /// Maximum size of large tablet
  double get large;
  @override
  @JsonKey(ignore: true)
  _$$_TabletSizeLandscapeCopyWith<_$_TabletSizeLandscape> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TabletSizePortraitCopyWith<$Res>
    implements $TabletSizeCopyWith<$Res> {
  factory _$$_TabletSizePortraitCopyWith(_$_TabletSizePortrait value,
          $Res Function(_$_TabletSizePortrait) then) =
      __$$_TabletSizePortraitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double small, double large});
}

/// @nodoc
class __$$_TabletSizePortraitCopyWithImpl<$Res>
    extends _$TabletSizeCopyWithImpl<$Res, _$_TabletSizePortrait>
    implements _$$_TabletSizePortraitCopyWith<$Res> {
  __$$_TabletSizePortraitCopyWithImpl(
      _$_TabletSizePortrait _value, $Res Function(_$_TabletSizePortrait) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? large = null,
  }) {
    return _then(_$_TabletSizePortrait(
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as double,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TabletSizePortrait implements _TabletSizePortrait {
  const _$_TabletSizePortrait(
      {this.small = 720, this.large = 840, final String? $type})
      : $type = $type ?? 'portrait';

  factory _$_TabletSizePortrait.fromJson(Map<String, dynamic> json) =>
      _$$_TabletSizePortraitFromJson(json);

  /// Maximum size of small tablet
  @override
  @JsonKey()
  final double small;

  /// Maximum size of large tablet
  @override
  @JsonKey()
  final double large;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TabletSize.portrait(small: $small, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TabletSizePortrait &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TabletSizePortraitCopyWith<_$_TabletSizePortrait> get copyWith =>
      __$$_TabletSizePortraitCopyWithImpl<_$_TabletSizePortrait>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double small, double large) landscape,
    required TResult Function(double small, double large) portrait,
  }) {
    return portrait(small, large);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double small, double large)? landscape,
    TResult? Function(double small, double large)? portrait,
  }) {
    return portrait?.call(small, large);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double small, double large)? landscape,
    TResult Function(double small, double large)? portrait,
    required TResult orElse(),
  }) {
    if (portrait != null) {
      return portrait(small, large);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabletSizeLandscape value) landscape,
    required TResult Function(_TabletSizePortrait value) portrait,
  }) {
    return portrait(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabletSizeLandscape value)? landscape,
    TResult? Function(_TabletSizePortrait value)? portrait,
  }) {
    return portrait?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabletSizeLandscape value)? landscape,
    TResult Function(_TabletSizePortrait value)? portrait,
    required TResult orElse(),
  }) {
    if (portrait != null) {
      return portrait(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TabletSizePortraitToJson(
      this,
    );
  }
}

abstract class _TabletSizePortrait implements TabletSize {
  const factory _TabletSizePortrait({final double small, final double large}) =
      _$_TabletSizePortrait;

  factory _TabletSizePortrait.fromJson(Map<String, dynamic> json) =
      _$_TabletSizePortrait.fromJson;

  @override

  /// Maximum size of small tablet
  double get small;
  @override

  /// Maximum size of large tablet
  double get large;
  @override
  @JsonKey(ignore: true)
  _$$_TabletSizePortraitCopyWith<_$_TabletSizePortrait> get copyWith =>
      throw _privateConstructorUsedError;
}

WatchSize _$WatchSizeFromJson(Map<String, dynamic> json) {
  return _WatchSizeLandscape.fromJson(json);
}

/// @nodoc
mixin _$WatchSize {
  /// Maximum size of small mobile phone
  double get medium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WatchSizeCopyWith<WatchSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchSizeCopyWith<$Res> {
  factory $WatchSizeCopyWith(WatchSize value, $Res Function(WatchSize) then) =
      _$WatchSizeCopyWithImpl<$Res, WatchSize>;
  @useResult
  $Res call({double medium});
}

/// @nodoc
class _$WatchSizeCopyWithImpl<$Res, $Val extends WatchSize>
    implements $WatchSizeCopyWith<$Res> {
  _$WatchSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
  }) {
    return _then(_value.copyWith(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WatchSizeLandscapeCopyWith<$Res>
    implements $WatchSizeCopyWith<$Res> {
  factory _$$_WatchSizeLandscapeCopyWith(_$_WatchSizeLandscape value,
          $Res Function(_$_WatchSizeLandscape) then) =
      __$$_WatchSizeLandscapeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double medium});
}

/// @nodoc
class __$$_WatchSizeLandscapeCopyWithImpl<$Res>
    extends _$WatchSizeCopyWithImpl<$Res, _$_WatchSizeLandscape>
    implements _$$_WatchSizeLandscapeCopyWith<$Res> {
  __$$_WatchSizeLandscapeCopyWithImpl(
      _$_WatchSizeLandscape _value, $Res Function(_$_WatchSizeLandscape) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
  }) {
    return _then(_$_WatchSizeLandscape(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WatchSizeLandscape implements _WatchSizeLandscape {
  const _$_WatchSizeLandscape({this.medium = 220});

  factory _$_WatchSizeLandscape.fromJson(Map<String, dynamic> json) =>
      _$$_WatchSizeLandscapeFromJson(json);

  /// Maximum size of small mobile phone
  @override
  @JsonKey()
  final double medium;

  @override
  String toString() {
    return 'WatchSize(medium: $medium)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchSizeLandscape &&
            (identical(other.medium, medium) || other.medium == medium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchSizeLandscapeCopyWith<_$_WatchSizeLandscape> get copyWith =>
      __$$_WatchSizeLandscapeCopyWithImpl<_$_WatchSizeLandscape>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WatchSizeLandscapeToJson(
      this,
    );
  }
}

abstract class _WatchSizeLandscape implements WatchSize {
  const factory _WatchSizeLandscape({final double medium}) =
      _$_WatchSizeLandscape;

  factory _WatchSizeLandscape.fromJson(Map<String, dynamic> json) =
      _$_WatchSizeLandscape.fromJson;

  @override

  /// Maximum size of small mobile phone
  double get medium;
  @override
  @JsonKey(ignore: true)
  _$$_WatchSizeLandscapeCopyWith<_$_WatchSizeLandscape> get copyWith =>
      throw _privateConstructorUsedError;
}
