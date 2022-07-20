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
    apiKey: 'AIzaSyCu5PrHAM59579NOV2aTRKKi_VvABm3RZU',
    appId: '1:904224732962:web:4a42ce2d1424c76ae9177b',
    messagingSenderId: '904224732962',
    projectId: 'flutter-firebase-example-e2ee0',
    authDomain: 'flutter-firebase-example-e2ee0.firebaseapp.com',
    storageBucket: 'flutter-firebase-example-e2ee0.appspot.com',
    measurementId: 'G-8Y8KFPQY5Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBdUgjWW_AQ07rV1jO0Ay8i2NdnWsP0muw',
    appId: '1:904224732962:android:f03ee699fddb3f66e9177b',
    messagingSenderId: '904224732962',
    projectId: 'flutter-firebase-example-e2ee0',
    storageBucket: 'flutter-firebase-example-e2ee0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdiUTIsS4BV6-QzTlPvPTLcTLo8lPmpfs',
    appId: '1:904224732962:ios:cda4c3b72fd22243e9177b',
    messagingSenderId: '904224732962',
    projectId: 'flutter-firebase-example-e2ee0',
    storageBucket: 'flutter-firebase-example-e2ee0.appspot.com',
    iosClientId: '904224732962-buh0ps7lsuig2reamm28i3ab8off51ua.apps.googleusercontent.com',
    iosBundleId: 'com.babak.flutterFirebaseExample',
  );
}
