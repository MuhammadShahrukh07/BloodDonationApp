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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBhXi2kTQj6ywv9vTEGrwoWgAQWMU2XWuk',
    appId: '1:1095410896361:web:a6e2618f0c017898c90f78',
    messagingSenderId: '1095410896361',
    projectId: 'bloodapp-2dc64',
    authDomain: 'bloodapp-2dc64.firebaseapp.com',
    storageBucket: 'bloodapp-2dc64.appspot.com',
    measurementId: 'G-R6T94L6BRK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAdHyOxhfekWVcBGaEd9QxooG9tIx4_1es',
    appId: '1:1095410896361:android:43be4d01aeffdfb3c90f78',
    messagingSenderId: '1095410896361',
    projectId: 'bloodapp-2dc64',
    storageBucket: 'bloodapp-2dc64.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwCKaxNr9gJ1ix1ubn_eftbyycVua9ahs',
    appId: '1:1095410896361:ios:4622e23f4ba3b343c90f78',
    messagingSenderId: '1095410896361',
    projectId: 'bloodapp-2dc64',
    storageBucket: 'bloodapp-2dc64.appspot.com',
    iosBundleId: 'com.example.bloodapp',
  );
}
