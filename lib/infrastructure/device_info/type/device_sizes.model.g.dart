// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_sizes.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MobileSizeLandscape _$$_MobileSizeLandscapeFromJson(
        Map<String, dynamic> json) =>
    _$_MobileSizeLandscape(
      small: (json['small'] as num?)?.toDouble() ?? 600,
      medium: (json['medium'] as num?)?.toDouble() ?? 720,
      large: (json['large'] as num?)?.toDouble() ?? 960,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MobileSizeLandscapeToJson(
        _$_MobileSizeLandscape instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
      'runtimeType': instance.$type,
    };

_$_MobileSizePortrait _$$_MobileSizePortraitFromJson(
        Map<String, dynamic> json) =>
    _$_MobileSizePortrait(
      small: (json['small'] as num?)?.toDouble() ?? 360,
      medium: (json['medium'] as num?)?.toDouble() ?? 400,
      large: (json['large'] as num?)?.toDouble() ?? 600,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_MobileSizePortraitToJson(
        _$_MobileSizePortrait instance) =>
    <String, dynamic>{
      'small': instance.small,
      'medium': instance.medium,
      'large': instance.large,
      'runtimeType': instance.$type,
    };

_$_TabletSizeLandscape _$$_TabletSizeLandscapeFromJson(
        Map<String, dynamic> json) =>
    _$_TabletSizeLandscape(
      small: (json['small'] as num?)?.toDouble() ?? 1024,
      large: (json['large'] as num?)?.toDouble() ?? 1280,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TabletSizeLandscapeToJson(
        _$_TabletSizeLandscape instance) =>
    <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'runtimeType': instance.$type,
    };

_$_TabletSizePortrait _$$_TabletSizePortraitFromJson(
        Map<String, dynamic> json) =>
    _$_TabletSizePortrait(
      small: (json['small'] as num?)?.toDouble() ?? 720,
      large: (json['large'] as num?)?.toDouble() ?? 840,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_TabletSizePortraitToJson(
        _$_TabletSizePortrait instance) =>
    <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
      'runtimeType': instance.$type,
    };

_$_WatchSizeLandscape _$$_WatchSizeLandscapeFromJson(
        Map<String, dynamic> json) =>
    _$_WatchSizeLandscape(
      medium: (json['medium'] as num?)?.toDouble() ?? 220,
    );

Map<String, dynamic> _$$_WatchSizeLandscapeToJson(
        _$_WatchSizeLandscape instance) =>
    <String, dynamic>{
      'medium': instance.medium,
    };
