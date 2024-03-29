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
    apiKey: 'AIzaSyArdb43mThxhWz3EiubCk_qf3_EBT7U12Y',
    appId: '1:118857884470:web:3192bf8a040bf26dc70997',
    messagingSenderId: '118857884470',
    projectId: 'aero-delivery',
    authDomain: 'aero-delivery.firebaseapp.com',
    storageBucket: 'aero-delivery.appspot.com',
    measurementId: 'G-EC95G1H3JT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCsf5tLrQwWJKhxzKHbbfJ-ZVO0RXcInrY',
    appId: '1:118857884470:android:dc37cf63efc8dff1c70997',
    messagingSenderId: '118857884470',
    projectId: 'aero-delivery',
    storageBucket: 'aero-delivery.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKtHXmcs9Ztau5WySvWDCOrtkJze4jqqs',
    appId: '1:118857884470:ios:193ff40ea82e884dc70997',
    messagingSenderId: '118857884470',
    projectId: 'aero-delivery',
    storageBucket: 'aero-delivery.appspot.com',
    iosClientId:
        '118857884470-7ii6otghfb80cc4mi3sms9i9rrugfube.apps.googleusercontent.com',
    iosBundleId: 'cyber.project.aeroDelivery',
  );
}
