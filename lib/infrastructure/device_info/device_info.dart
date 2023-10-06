import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_project_template_firebase/infrastructure/device_info/type/device_sizes.model.dart';

enum DeviceMake {
  android,
  ios,
  web,
  other,
}

extension DeviceMakeExtension on DeviceMake {
  String get name {
    switch (this) {
      case DeviceMake.android:
        return 'Android';
      case DeviceMake.ios:
        return 'iOS';
      case DeviceMake.web:
        return 'Web';
      case DeviceMake.other:
        return 'Other';
    }
  }

  String get _store {
    switch (this) {
      case DeviceMake.web:
        return 'Store';
      case DeviceMake.android:
        return 'Play Store';
      case DeviceMake.ios:
        return 'App Store';
      case DeviceMake.other:
        return 'Store';
    }
  }

  bool get _isIos => this == DeviceMake.ios;
  bool get _isAndroid => this == DeviceMake.android;
  bool get _isWeb => this == DeviceMake.web;
}

abstract class DeviceInfo {
  static final _deviceInfo = DeviceInfoPlugin();

  static late _DeviceData _data;

  static Future<void> initialize() async {
    if (kIsWeb) {
      _data = _WebData(await _deviceInfo.webBrowserInfo);
    } else if (Platform.isAndroid) {
      _data = _AndroidData(await _deviceInfo.androidInfo);
    } else if (Platform.isIOS) {
      _data = _IOSData(await _deviceInfo.iosInfo);
    }
  }

  static DeviceMake get platform {
    if (kIsWeb) {
      return DeviceMake.web;
    } else if (Platform.isAndroid) {
      return DeviceMake.android;
    } else if (Platform.isIOS) {
      return DeviceMake.ios;
    } else {
      return DeviceMake.other;
    }
  }

  static _DeviceSizeData sizeData(BuildContext context) =>
      _DeviceSizeData(context: context);

  static String get store => platform._store;
  static bool get isIos => platform._isIos;
  static bool get isAndroid => platform._isAndroid;
  static bool get isWeb => platform._isWeb;

  static String get device => _data.device;
  static String get os => _data.os;
  static String get make => _data.make;
  static String? get identifierForVendor => platform == DeviceMake.ios
      ? (_data as _IOSData)._data.identifierForVendor
      : (_data as _AndroidData)._data.id;

  static Orientation orientation(BuildContext context) =>
      MediaQuery.of(context).orientation;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  static Future<void> allowLandscapeOrientation() =>
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
        DeviceOrientation.portraitUp,
      ]);

  static Future<void> forcePortraitOrientation() =>
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);

  static Future<void> setFullScreen() =>
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  static bool get isKeyboardOpen =>
      WidgetsBinding.instance.window.viewInsets.bottom != 0;
}

abstract class _DeviceData {
  ///The end-user-visible name for the end product.
  String get make;

  ///The end-user-visible name for the end product.
  String get device;

  ///The base OS build the product is based on.
  String get os;
}

class _AndroidData implements _DeviceData {
  const _AndroidData(this._data);

  final AndroidDeviceInfo _data;

  @override
  String get make => _data.model;

  @override
  String get os => _data.version.baseOS ?? 'version';

  @override
  String get device => '${_data.brand} ${_data.device}';
}

class _IOSData implements _DeviceData {
  const _IOSData(this._data);

  final IosDeviceInfo _data;

  @override
  String get make => _data.model ?? 'ios device';

  @override
  String get os => _data.systemVersion ?? 'version';

  @override
  String get device => _data.utsname.machine ?? 'physical phone';
}

class _WebData implements _DeviceData {
  const _WebData(this._data);

  final WebBrowserInfo _data;

  @override
  String get make => _data.platform ?? 'web';

  @override
  String get os => _data.vendor ?? 'web';

  @override
  String get device => describeEnum(_data.browserName);
}

enum DeviceRelativeSize {
  small,
  medium,
  large,
}

enum DeviceType {
  watch,
  mobile,
  tablet,
  desktop,
}

extension DeviceRelativeSizeExt on DeviceRelativeSize {
  bool get isSmall => this == DeviceRelativeSize.small;
  bool get isMedium => this == DeviceRelativeSize.medium;
  bool get isLarge => this == DeviceRelativeSize.large;
}

extension DeviceTypeExt on DeviceType {
  bool get isWatch => this == DeviceType.watch;
  bool get isMobile => this == DeviceType.mobile;
  bool get isTablet => this == DeviceType.tablet;
  bool get isDesktop => this == DeviceType.desktop;
}

class _DeviceSizeData {
  _DeviceSizeData({
    required BuildContext context,
  }) {
    final orientation = MediaQuery.of(context).orientation;
    final mobileSize = orientation == Orientation.landscape
        ? const MobileSize.landscape()
        : const MobileSize.portrait();
    final tabletSize = orientation == Orientation.landscape
        ? const TabletSize.landscape()
        : const TabletSize.portrait();
    const watchSize = WatchSize();
    final width = MediaQuery.of(context).size.width;

    // setting watch params
    if (width <= watchSize.medium) {
      size = DeviceRelativeSize.medium;
      type = DeviceType.watch;
      return;
    }

    // setting mobile params
    if (width < mobileSize.medium) {
      size = DeviceRelativeSize.small;
      type = DeviceType.mobile;
      return;
    } else if (width < mobileSize.large) {
      size = DeviceRelativeSize.medium;
      type = DeviceType.mobile;
      return;
    } else if (width < tabletSize.small) {
      size = DeviceRelativeSize.large;
      type = DeviceType.mobile;
      return;
    }

    // setting tablet params
    if (width < tabletSize.large) {
      size = DeviceRelativeSize.small;
      type = DeviceType.tablet;
      return;
    } else if (width == tabletSize.large) {
      size = DeviceRelativeSize.large;
      type = DeviceType.tablet;
      return;
    } else if (width < tabletSize.small) {
      size = DeviceRelativeSize.large;
      type = DeviceType.mobile;
      return;
    }

    // setting desktop params
    size = DeviceRelativeSize.large;
    type = DeviceType.desktop;
    return;
  }
  late final DeviceRelativeSize size;
  late final DeviceType type;
}
