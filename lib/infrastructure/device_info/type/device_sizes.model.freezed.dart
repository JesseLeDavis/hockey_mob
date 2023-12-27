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
abstract class _$$MobileSizeLandscapeImplCopyWith<$Res>
    implements $MobileSizeCopyWith<$Res> {
  factory _$$MobileSizeLandscapeImplCopyWith(_$MobileSizeLandscapeImpl value,
          $Res Function(_$MobileSizeLandscapeImpl) then) =
      __$$MobileSizeLandscapeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double small, double medium, double large});
}

/// @nodoc
class __$$MobileSizeLandscapeImplCopyWithImpl<$Res>
    extends _$MobileSizeCopyWithImpl<$Res, _$MobileSizeLandscapeImpl>
    implements _$$MobileSizeLandscapeImplCopyWith<$Res> {
  __$$MobileSizeLandscapeImplCopyWithImpl(_$MobileSizeLandscapeImpl _value,
      $Res Function(_$MobileSizeLandscapeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$MobileSizeLandscapeImpl(
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
class _$MobileSizeLandscapeImpl implements _MobileSizeLandscape {
  const _$MobileSizeLandscapeImpl(
      {this.small = 600,
      this.medium = 720,
      this.large = 960,
      final String? $type})
      : $type = $type ?? 'landscape';

  factory _$MobileSizeLandscapeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileSizeLandscapeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileSizeLandscapeImpl &&
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
  _$$MobileSizeLandscapeImplCopyWith<_$MobileSizeLandscapeImpl> get copyWith =>
      __$$MobileSizeLandscapeImplCopyWithImpl<_$MobileSizeLandscapeImpl>(
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
    return _$$MobileSizeLandscapeImplToJson(
      this,
    );
  }
}

abstract class _MobileSizeLandscape implements MobileSize {
  const factory _MobileSizeLandscape(
      {final double small,
      final double medium,
      final double large}) = _$MobileSizeLandscapeImpl;

  factory _MobileSizeLandscape.fromJson(Map<String, dynamic> json) =
      _$MobileSizeLandscapeImpl.fromJson;

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
  _$$MobileSizeLandscapeImplCopyWith<_$MobileSizeLandscapeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MobileSizePortraitImplCopyWith<$Res>
    implements $MobileSizeCopyWith<$Res> {
  factory _$$MobileSizePortraitImplCopyWith(_$MobileSizePortraitImpl value,
          $Res Function(_$MobileSizePortraitImpl) then) =
      __$$MobileSizePortraitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double small, double medium, double large});
}

/// @nodoc
class __$$MobileSizePortraitImplCopyWithImpl<$Res>
    extends _$MobileSizeCopyWithImpl<$Res, _$MobileSizePortraitImpl>
    implements _$$MobileSizePortraitImplCopyWith<$Res> {
  __$$MobileSizePortraitImplCopyWithImpl(_$MobileSizePortraitImpl _value,
      $Res Function(_$MobileSizePortraitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$MobileSizePortraitImpl(
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
class _$MobileSizePortraitImpl implements _MobileSizePortrait {
  const _$MobileSizePortraitImpl(
      {this.small = 360,
      this.medium = 400,
      this.large = 600,
      final String? $type})
      : $type = $type ?? 'portrait';

  factory _$MobileSizePortraitImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileSizePortraitImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileSizePortraitImpl &&
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
  _$$MobileSizePortraitImplCopyWith<_$MobileSizePortraitImpl> get copyWith =>
      __$$MobileSizePortraitImplCopyWithImpl<_$MobileSizePortraitImpl>(
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
    return _$$MobileSizePortraitImplToJson(
      this,
    );
  }
}

abstract class _MobileSizePortrait implements MobileSize {
  const factory _MobileSizePortrait(
      {final double small,
      final double medium,
      final double large}) = _$MobileSizePortraitImpl;

  factory _MobileSizePortrait.fromJson(Map<String, dynamic> json) =
      _$MobileSizePortraitImpl.fromJson;

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
  _$$MobileSizePortraitImplCopyWith<_$MobileSizePortraitImpl> get copyWith =>
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
abstract class _$$TabletSizeLandscapeImplCopyWith<$Res>
    implements $TabletSizeCopyWith<$Res> {
  factory _$$TabletSizeLandscapeImplCopyWith(_$TabletSizeLandscapeImpl value,
          $Res Function(_$TabletSizeLandscapeImpl) then) =
      __$$TabletSizeLandscapeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double small, double large});
}

/// @nodoc
class __$$TabletSizeLandscapeImplCopyWithImpl<$Res>
    extends _$TabletSizeCopyWithImpl<$Res, _$TabletSizeLandscapeImpl>
    implements _$$TabletSizeLandscapeImplCopyWith<$Res> {
  __$$TabletSizeLandscapeImplCopyWithImpl(_$TabletSizeLandscapeImpl _value,
      $Res Function(_$TabletSizeLandscapeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? large = null,
  }) {
    return _then(_$TabletSizeLandscapeImpl(
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
class _$TabletSizeLandscapeImpl implements _TabletSizeLandscape {
  const _$TabletSizeLandscapeImpl(
      {this.small = 1024, this.large = 1280, final String? $type})
      : $type = $type ?? 'landscape';

  factory _$TabletSizeLandscapeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabletSizeLandscapeImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabletSizeLandscapeImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabletSizeLandscapeImplCopyWith<_$TabletSizeLandscapeImpl> get copyWith =>
      __$$TabletSizeLandscapeImplCopyWithImpl<_$TabletSizeLandscapeImpl>(
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
    return _$$TabletSizeLandscapeImplToJson(
      this,
    );
  }
}

abstract class _TabletSizeLandscape implements TabletSize {
  const factory _TabletSizeLandscape({final double small, final double large}) =
      _$TabletSizeLandscapeImpl;

  factory _TabletSizeLandscape.fromJson(Map<String, dynamic> json) =
      _$TabletSizeLandscapeImpl.fromJson;

  @override

  /// Maximum size of small tablet
  double get small;
  @override

  /// Maximum size of large tablet
  double get large;
  @override
  @JsonKey(ignore: true)
  _$$TabletSizeLandscapeImplCopyWith<_$TabletSizeLandscapeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TabletSizePortraitImplCopyWith<$Res>
    implements $TabletSizeCopyWith<$Res> {
  factory _$$TabletSizePortraitImplCopyWith(_$TabletSizePortraitImpl value,
          $Res Function(_$TabletSizePortraitImpl) then) =
      __$$TabletSizePortraitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double small, double large});
}

/// @nodoc
class __$$TabletSizePortraitImplCopyWithImpl<$Res>
    extends _$TabletSizeCopyWithImpl<$Res, _$TabletSizePortraitImpl>
    implements _$$TabletSizePortraitImplCopyWith<$Res> {
  __$$TabletSizePortraitImplCopyWithImpl(_$TabletSizePortraitImpl _value,
      $Res Function(_$TabletSizePortraitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = null,
    Object? large = null,
  }) {
    return _then(_$TabletSizePortraitImpl(
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
class _$TabletSizePortraitImpl implements _TabletSizePortrait {
  const _$TabletSizePortraitImpl(
      {this.small = 720, this.large = 840, final String? $type})
      : $type = $type ?? 'portrait';

  factory _$TabletSizePortraitImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabletSizePortraitImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabletSizePortraitImpl &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabletSizePortraitImplCopyWith<_$TabletSizePortraitImpl> get copyWith =>
      __$$TabletSizePortraitImplCopyWithImpl<_$TabletSizePortraitImpl>(
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
    return _$$TabletSizePortraitImplToJson(
      this,
    );
  }
}

abstract class _TabletSizePortrait implements TabletSize {
  const factory _TabletSizePortrait({final double small, final double large}) =
      _$TabletSizePortraitImpl;

  factory _TabletSizePortrait.fromJson(Map<String, dynamic> json) =
      _$TabletSizePortraitImpl.fromJson;

  @override

  /// Maximum size of small tablet
  double get small;
  @override

  /// Maximum size of large tablet
  double get large;
  @override
  @JsonKey(ignore: true)
  _$$TabletSizePortraitImplCopyWith<_$TabletSizePortraitImpl> get copyWith =>
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
abstract class _$$WatchSizeLandscapeImplCopyWith<$Res>
    implements $WatchSizeCopyWith<$Res> {
  factory _$$WatchSizeLandscapeImplCopyWith(_$WatchSizeLandscapeImpl value,
          $Res Function(_$WatchSizeLandscapeImpl) then) =
      __$$WatchSizeLandscapeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double medium});
}

/// @nodoc
class __$$WatchSizeLandscapeImplCopyWithImpl<$Res>
    extends _$WatchSizeCopyWithImpl<$Res, _$WatchSizeLandscapeImpl>
    implements _$$WatchSizeLandscapeImplCopyWith<$Res> {
  __$$WatchSizeLandscapeImplCopyWithImpl(_$WatchSizeLandscapeImpl _value,
      $Res Function(_$WatchSizeLandscapeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
  }) {
    return _then(_$WatchSizeLandscapeImpl(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WatchSizeLandscapeImpl implements _WatchSizeLandscape {
  const _$WatchSizeLandscapeImpl({this.medium = 220});

  factory _$WatchSizeLandscapeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WatchSizeLandscapeImplFromJson(json);

  /// Maximum size of small mobile phone
  @override
  @JsonKey()
  final double medium;

  @override
  String toString() {
    return 'WatchSize(medium: $medium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchSizeLandscapeImpl &&
            (identical(other.medium, medium) || other.medium == medium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchSizeLandscapeImplCopyWith<_$WatchSizeLandscapeImpl> get copyWith =>
      __$$WatchSizeLandscapeImplCopyWithImpl<_$WatchSizeLandscapeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WatchSizeLandscapeImplToJson(
      this,
    );
  }
}

abstract class _WatchSizeLandscape implements WatchSize {
  const factory _WatchSizeLandscape({final double medium}) =
      _$WatchSizeLandscapeImpl;

  factory _WatchSizeLandscape.fromJson(Map<String, dynamic> json) =
      _$WatchSizeLandscapeImpl.fromJson;

  @override

  /// Maximum size of small mobile phone
  double get medium;
  @override
  @JsonKey(ignore: true)
  _$$WatchSizeLandscapeImplCopyWith<_$WatchSizeLandscapeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
