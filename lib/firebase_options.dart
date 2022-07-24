// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDWxTMizWwKUlnzfhDUodUSyQ1yFrgjcyk',
    appId: '1:76739107717:web:389844d0d9366f5ad542ec',
    messagingSenderId: '76739107717',
    projectId: 'vise-maps',
    authDomain: 'vise-maps.firebaseapp.com',
    storageBucket: 'vise-maps.appspot.com',
    measurementId: 'G-YH36PTBF6H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNtcB_EZ1tTS4bsZ1I5ZeXPYwIXIxV7rc',
    appId: '1:76739107717:android:35c00b40a8d0da55d542ec',
    messagingSenderId: '76739107717',
    projectId: 'vise-maps',
    storageBucket: 'vise-maps.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfiI_iSY6Dwv7Rl70v1QgmFFV8SPCud_s',
    appId: '1:76739107717:ios:c6a6a93a5cde2278d542ec',
    messagingSenderId: '76739107717',
    projectId: 'vise-maps',
    storageBucket: 'vise-maps.appspot.com',
    androidClientId: '76739107717-tdk8cq26hpa9f2noa7quo3rh21hdk997.apps.googleusercontent.com',
    iosClientId: '76739107717-hl34456v6abtj2sprtkc1ess3oimsnv3.apps.googleusercontent.com',
    iosBundleId: 'sbs.vise.visemaps',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfiI_iSY6Dwv7Rl70v1QgmFFV8SPCud_s',
    appId: '1:76739107717:ios:c6a6a93a5cde2278d542ec',
    messagingSenderId: '76739107717',
    projectId: 'vise-maps',
    storageBucket: 'vise-maps.appspot.com',
    androidClientId: '76739107717-tdk8cq26hpa9f2noa7quo3rh21hdk997.apps.googleusercontent.com',
    iosClientId: '76739107717-hl34456v6abtj2sprtkc1ess3oimsnv3.apps.googleusercontent.com',
    iosBundleId: 'sbs.vise.visemaps',
  );
}
