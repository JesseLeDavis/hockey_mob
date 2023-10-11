// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_sizes.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobileSizeLandscapeImpl _$$MobileSizeLandscapeImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileSizeLandscapeImpl(
      small: (json['small'] as num?)?.toDouble() ?? 600,
      medium: (json['medium'] as num?)?.toDouble() ?? 720,
      large: (json['large'] as num?)?.toDouble() ?? 960,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MobileSizeLandscapeImplToJson(
        _$MobileSizeLandscapeImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
      'runtimeType': instance.$type,
    };

_$MobileSizePortraitImpl _$$MobileSizePortraitImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileSizePortraitImpl(
      small: (json['small'] as num?)?.toDouble() ?? 360,
      medium: (json['medium'] as num?)?.toDouble() ?? 400,
      large: (json['large'] as num?)?.toDouble() ?? 600,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MobileSizePortraitImplToJson(
        _$MobileSizePortraitImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
      'runtimeType': instance.$type,
    };

_$TabletSizeLandscapeImpl _$$TabletSizeLandscapeImplFromJson(
        Map<String, dynamic> json) =>
    _$TabletSizeLandscapeImpl(
      small: (json['small'] as num?)?.toDouble() ?? 1024,
      large: (json['large'] as num?)?.toDouble() ?? 1280,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TabletSizeLandscapeImplToJson(
        _$TabletSizeLandscapeImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'runtimeType': instance.$type,
    };

_$TabletSizePortraitImpl _$$TabletSizePortraitImplFromJson(
        Map<String, dynamic> json) =>
    _$TabletSizePortraitImpl(
      small: (json['small'] as num?)?.toDouble() ?? 720,
      large: (json['large'] as num?)?.toDouble() ?? 840,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TabletSizePortraitImplToJson(
        _$TabletSizePortraitImpl instance) =>
    <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'runtimeType': instance.$type,
    };

_$WatchSizeLandscapeImpl _$$WatchSizeLandscapeImplFromJson(
        Map<String, dynamic> json) =>
    _$WatchSizeLandscapeImpl(
      medium: (json['medium'] as num?)?.toDouble() ?? 220,
    );

Map<String, dynamic> _$$WatchSizeLandscapeImplToJson(
        _$WatchSizeLandscapeImpl instance) =>
    <String, dynamic>{
      'medium': instance.medium,
    };
