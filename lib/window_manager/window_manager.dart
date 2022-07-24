// ignore: always_use_package_imports
import 'window_manager_io.dart' if (dart.library.html) 'window_manager_html.dart';

abstract class ViseWindowManager {
  static bool get isSupported => isPlatformSupported();
  factory ViseWindowManager() => getWindowManager();

  Future<void> initialize();
  void toggle();
  void minimize();
  void close();
}

class VoidManager implements ViseWindowManager {
  @override
  Future<void> initialize() async {}

  @override
  void toggle() {}

  @override
  void minimize() {}

  @override
  void close() {}
}