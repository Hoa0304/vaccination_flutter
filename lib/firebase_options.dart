// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCSe1uhYMsbxoM9-fPHc85BzmxzxskOy24',
    appId: '1:1082818881728:web:d2ee5438635e992c692525',
    messagingSenderId: '1082818881728',
    projectId: 'vaccination-27818',
    authDomain: 'vaccination-27818.firebaseapp.com',
    storageBucket: 'vaccination-27818.appspot.com',
    measurementId: 'G-VK0GETLX8G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPidvAAGW_9YimxEtuazUCtO7jg-gaPTM',
    appId: '1:1082818881728:android:b73811f65882ea05692525',
    messagingSenderId: '1082818881728',
    projectId: 'vaccination-27818',
    storageBucket: 'vaccination-27818.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvJafQtJh-pPM0OK_zhdvTqG_eSvrhvM8',
    appId: '1:1082818881728:ios:69c0ffb0218536b6692525',
    messagingSenderId: '1082818881728',
    projectId: 'vaccination-27818',
    storageBucket: 'vaccination-27818.appspot.com',
    iosBundleId: 'com.example.vaccination',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvJafQtJh-pPM0OK_zhdvTqG_eSvrhvM8',
    appId: '1:1082818881728:ios:69c0ffb0218536b6692525',
    messagingSenderId: '1082818881728',
    projectId: 'vaccination-27818',
    storageBucket: 'vaccination-27818.appspot.com',
    iosBundleId: 'com.example.vaccination',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCSe1uhYMsbxoM9-fPHc85BzmxzxskOy24',
    appId: '1:1082818881728:web:589e7659ed37aed1692525',
    messagingSenderId: '1082818881728',
    projectId: 'vaccination-27818',
    authDomain: 'vaccination-27818.firebaseapp.com',
    storageBucket: 'vaccination-27818.appspot.com',
    measurementId: 'G-1EKH8V7ZN2',
  );
}
