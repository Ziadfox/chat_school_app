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
    apiKey: 'AIzaSyAOMP7qljtVU10V1K3N7P75VHD84XcndRE',
    appId: '1:594767548405:web:a619e3631da142f99f5abc',
    messagingSenderId: '594767548405',
    projectId: 'chat-app-3674b',
    authDomain: 'chat-app-3674b.firebaseapp.com',
    storageBucket: 'chat-app-3674b.appspot.com',
    measurementId: 'G-WLPGV133C2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAD_bPHVAoAX6DRduWiiRyMbNBwiaYVq2A',
    appId: '1:594767548405:android:927610663b6e5e289f5abc',
    messagingSenderId: '594767548405',
    projectId: 'chat-app-3674b',
    storageBucket: 'chat-app-3674b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1Ar_NJACsN_zYnXDkaSlVte0hDMe5UeE',
    appId: '1:594767548405:ios:3a4181e47f9c65c49f5abc',
    messagingSenderId: '594767548405',
    projectId: 'chat-app-3674b',
    storageBucket: 'chat-app-3674b.appspot.com',
    iosClientId: '594767548405-bl4t1t5coukgu0j3bfcbsq4i8tr2j7el.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatSchoolApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1Ar_NJACsN_zYnXDkaSlVte0hDMe5UeE',
    appId: '1:594767548405:ios:3a4181e47f9c65c49f5abc',
    messagingSenderId: '594767548405',
    projectId: 'chat-app-3674b',
    storageBucket: 'chat-app-3674b.appspot.com',
    iosClientId: '594767548405-bl4t1t5coukgu0j3bfcbsq4i8tr2j7el.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatSchoolApp',
  );
}