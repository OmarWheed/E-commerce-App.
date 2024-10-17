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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZ9A_0MH4JhG5TesShMzb25k2Bu1N23mA',
    appId: '1:257399668724:android:a1d9db4d924ae6d5df43a1',
    messagingSenderId: '257399668724',
    projectId: 'flutter-e-commerce-e3294',
    storageBucket: 'flutter-e-commerce-e3294.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCB8p6x_iy5OcS61kj0Szu0YafHHPzbqPE',
    appId: '1:257399668724:ios:0a5460c0b2f5b02edf43a1',
    messagingSenderId: '257399668724',
    projectId: 'flutter-e-commerce-e3294',
    storageBucket: 'flutter-e-commerce-e3294.appspot.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBwNTDh6J0Pm4AZAlOCJDTORTO2Bl2whc0',
    appId: '1:257399668724:web:2b3be6b1fb29385fdf43a1',
    messagingSenderId: '257399668724',
    projectId: 'flutter-e-commerce-e3294',
    authDomain: 'flutter-e-commerce-e3294.firebaseapp.com',
    storageBucket: 'flutter-e-commerce-e3294.appspot.com',
  );
}
