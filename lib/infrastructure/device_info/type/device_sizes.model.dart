import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_sizes.model.freezed.dart';
part 'device_sizes.model.g.dart';

/// Holder of max size of different screens
@freezed
class MobileSize with _$MobileSize {
  const factory MobileSize.landscape({
    /// Maximum size of small mobile phone
    @Default(600) double small,

    /// Maximum size of middle mobile phone
    @Default(720) double medium,

    /// Maximum size of large mobile phone
    @Default(960) double large,
  }) = _MobileSizeLandscape;

  const factory MobileSize.portrait({
    /// Maximum size of small mobile phone
    @Default(360) double small,

    /// Maximum size of middle mobile phone
    @Default(400) double medium,

    /// Maximum size of large mobile phone
    @Default(600) double large,
  }) = _MobileSizePortrait;

  factory MobileSize.fromJson(Map<String, dynamic> json) =>
      _$MobileSizeFromJson(json);
}

@freezed
class TabletSize with _$TabletSize {
  const factory TabletSize.landscape({
    /// Maximum size of small tablet
    @Default(1024) double small,

    /// Maximum size of large tablet
    @Default(1280) double large,
  }) = _TabletSizeLandscape;

  const factory TabletSize.portrait({
    /// Maximum size of small tablet
    @Default(720) double small,

    /// Maximum size of large tablet
    @Default(840) double large,
  }) = _TabletSizePortrait;

  factory TabletSize.fromJson(Map<String, dynamic> json) =>
      _$TabletSizeFromJson(json);
}

@freezed
class WatchSize with _$WatchSize {
  const factory WatchSize({
    /// Maximum size of small mobile phone
    @Default(220) double medium,
  }) = _WatchSizeLandscape;

  factory WatchSize.fromJson(Map<String, dynamic> json) =>
      _$WatchSizeFromJson(json);
}
