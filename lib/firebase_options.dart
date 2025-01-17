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
    apiKey: 'AIzaSyBu-usJjh0kv2lwsaq1ee34y7tq4GPex3Q',
    appId: '1:607018789360:web:303ff64004e5bae781d535',
    messagingSenderId: '607018789360',
    projectId: 'firstfirebaseproject-3fc58',
    authDomain: 'firstfirebaseproject-3fc58.firebaseapp.com',
    storageBucket: 'firstfirebaseproject-3fc58.appspot.com',
    measurementId: 'G-8N7M146DTP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD6dN0hrxFNmFEULl2chrU2UHk1P61OPUQ',
    appId: '1:607018789360:android:258e5b02a93b40c581d535',
    messagingSenderId: '607018789360',
    projectId: 'firstfirebaseproject-3fc58',
    storageBucket: 'firstfirebaseproject-3fc58.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqkBJECyEZuzlbcOSc4wKZeTLgTmcPCIo',
    appId: '1:607018789360:ios:6329ab9ebbe4daca81d535',
    messagingSenderId: '607018789360',
    projectId: 'firstfirebaseproject-3fc58',
    storageBucket: 'firstfirebaseproject-3fc58.appspot.com',
    iosBundleId: 'com.example.firebaseproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqkBJECyEZuzlbcOSc4wKZeTLgTmcPCIo',
    appId: '1:607018789360:ios:6329ab9ebbe4daca81d535',
    messagingSenderId: '607018789360',
    projectId: 'firstfirebaseproject-3fc58',
    storageBucket: 'firstfirebaseproject-3fc58.appspot.com',
    iosBundleId: 'com.example.firebaseproject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBu-usJjh0kv2lwsaq1ee34y7tq4GPex3Q',
    appId: '1:607018789360:web:205e2a2ad72795f681d535',
    messagingSenderId: '607018789360',
    projectId: 'firstfirebaseproject-3fc58',
    authDomain: 'firstfirebaseproject-3fc58.firebaseapp.com',
    storageBucket: 'firstfirebaseproject-3fc58.appspot.com',
    measurementId: 'G-D5QE342281',
  );
}
