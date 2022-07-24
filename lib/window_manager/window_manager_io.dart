import 'package:flutter/widgets.dart';
import 'package:visemaps/platform.dart';
import 'package:window_manager/window_manager.dart';
import 'package:visemaps/window_manager/window_manager.dart';

bool isPlatformSupported() => VisePlatform.isDesktop;
ViseWindowManager getWindowManager() {
  switch (VisePlatform.current) {
    case VisePlatform.linux:
    case VisePlatform.macOS:
    case VisePlatform.windows:
      return IOManager();
    default:
      return VoidManager();
  }
}

class IOManager implements ViseWindowManager {
  @override
  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await windowManager.ensureInitialized();
    await windowManager.waitUntilReadyToShow(
      const WindowOptions(
        size: Size(800, 600),
        center: true,
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.15),
        skipTaskbar: false,
        titleBarStyle: TitleBarStyle.hidden, 
      )
    );
    await windowManager.setOpacity(0);
  }

  @override
  void toggle() async {
    if (await windowManager.isMaximized()) {
      windowManager.unmaximize();
    } else {
      windowManager.maximize();
    }
  }

  @override
  void minimize() {
    windowManager.minimize();
  }

  @override
  void close() {
    windowManager.close();
  }
}
