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
    apiKey: 'AIzaSyAjmbm4km4b5wFUTo1jEJnoa_NrHIGMDXM',
    appId: '1:426926682957:web:e748f254ee1f374c3bfd04',
    messagingSenderId: '426926682957',
    projectId: 'readdata-f9dc0',
    authDomain: 'readdata-f9dc0.firebaseapp.com',
    storageBucket: 'readdata-f9dc0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCnIxmBIMciX-j_vgBItdR-BYbipnZixMw',
    appId: '1:426926682957:android:70b585a1abcdcf343bfd04',
    messagingSenderId: '426926682957',
    projectId: 'readdata-f9dc0',
    storageBucket: 'readdata-f9dc0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJGLqXq5-c3uUmQ6WRkVlyAWEsIblGkYo',
    appId: '1:426926682957:ios:ec4d3f08ea947d533bfd04',
    messagingSenderId: '426926682957',
    projectId: 'readdata-f9dc0',
    storageBucket: 'readdata-f9dc0.appspot.com',
    iosBundleId: 'com.example.firestoreProject1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJGLqXq5-c3uUmQ6WRkVlyAWEsIblGkYo',
    appId: '1:426926682957:ios:228963041c2755b33bfd04',
    messagingSenderId: '426926682957',
    projectId: 'readdata-f9dc0',
    storageBucket: 'readdata-f9dc0.appspot.com',
    iosBundleId: 'com.example.firestoreProject1.RunnerTests',
  );
}
