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
    apiKey: 'AIzaSyD-lBwPsglspUUr_PeSgMkERrAFQvFbduI',
    appId: '1:524157029299:web:679ff6e42f0562cb52d9c6',
    messagingSenderId: '524157029299',
    projectId: 'hello-flutter-fire-dcaa8',
    authDomain: 'hello-flutter-fire-dcaa8.firebaseapp.com',
    storageBucket: 'hello-flutter-fire-dcaa8.firebasestorage.app',
    measurementId: 'G-N57J5LDS1Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB61v0zqcvyVob_tfxzZuO_oisynGfm2gk',
    appId: '1:524157029299:android:e38dc486d51a5ff852d9c6',
    messagingSenderId: '524157029299',
    projectId: 'hello-flutter-fire-dcaa8',
    storageBucket: 'hello-flutter-fire-dcaa8.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBwTVsT9XhZHWhK4Yn6ZExZ6CidfI35jMw',
    appId: '1:524157029299:ios:e7460fbb002447b752d9c6',
    messagingSenderId: '524157029299',
    projectId: 'hello-flutter-fire-dcaa8',
    storageBucket: 'hello-flutter-fire-dcaa8.firebasestorage.app',
    iosBundleId: 'com.example.ecommerceb1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBwTVsT9XhZHWhK4Yn6ZExZ6CidfI35jMw',
    appId: '1:524157029299:ios:e7460fbb002447b752d9c6',
    messagingSenderId: '524157029299',
    projectId: 'hello-flutter-fire-dcaa8',
    storageBucket: 'hello-flutter-fire-dcaa8.firebasestorage.app',
    iosBundleId: 'com.example.ecommerceb1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD-lBwPsglspUUr_PeSgMkERrAFQvFbduI',
    appId: '1:524157029299:web:4abb9840577f062352d9c6',
    messagingSenderId: '524157029299',
    projectId: 'hello-flutter-fire-dcaa8',
    authDomain: 'hello-flutter-fire-dcaa8.firebaseapp.com',
    storageBucket: 'hello-flutter-fire-dcaa8.firebasestorage.app',
    measurementId: 'G-39232DF2DS',
  );
}
