import 'package:flutter/foundation.dart';

enum VisePlatform {
  android,
  iOS,
  linux,
  macOS,
  web,
  windows;

  static bool get isAndroid {
    return !kIsWeb && defaultTargetPlatform == TargetPlatform.android;
  }

  static bool get isIOS {
    return !kIsWeb && defaultTargetPlatform == TargetPlatform.iOS;
  }

  static bool get isLinux {
    return !kIsWeb && defaultTargetPlatform == TargetPlatform.linux;
  }

  static bool get isMacOS {
    return !kIsWeb && defaultTargetPlatform == TargetPlatform.macOS;
  }

  static bool get isWeb {
    return kIsWeb;
  }

  static bool get isWindows {
    return !kIsWeb && defaultTargetPlatform == TargetPlatform.windows;
  }

  static bool get isMobile => isAndroid || isIOS;
  static bool get isDesktop => isLinux || isMacOS || isWindows;

  static VisePlatform get current {
    if (isWeb) return VisePlatform.web;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return VisePlatform.android;
      case TargetPlatform.iOS:
        return VisePlatform.iOS;
      case TargetPlatform.linux:
        return VisePlatform.linux;
      case TargetPlatform.macOS:
        return VisePlatform.macOS;
      case TargetPlatform.windows:
        return VisePlatform.windows;
      default:
        throw UnsupportedError('Platform is not supported');
    }
  }

  String get name {
    switch (this) {
      case VisePlatform.android:
        return 'Android';
      case VisePlatform.iOS:
        return 'iOS';
      case VisePlatform.linux:
        return 'Linux';
      case VisePlatform.macOS:
        return 'macOS';
      case VisePlatform.web:
        return 'Web';
      case VisePlatform.windows:
        return 'Windows';
    }
  }
}
