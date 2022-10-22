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
    apiKey: 'AIzaSyDlKLdjc8cqTQRnuIJN1kC8QUuodcp26EE',
    appId: '1:306823440491:web:095a8df423dcffa637692e',
    messagingSenderId: '306823440491',
    projectId: 'signinsignupcrud',
    authDomain: 'signinsignupcrud.firebaseapp.com',
    storageBucket: 'signinsignupcrud.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAguqg5dCr0iMdIvL3OkVnwqJS5_mQDiw',
    appId: '1:306823440491:android:d05044c4db30c12b37692e',
    messagingSenderId: '306823440491',
    projectId: 'signinsignupcrud',
    storageBucket: 'signinsignupcrud.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgj1jhUoSsx2PrpFbn9hgoDwimqYGTHCQ',
    appId: '1:306823440491:ios:bf7f2563e7f8846837692e',
    messagingSenderId: '306823440491',
    projectId: 'signinsignupcrud',
    storageBucket: 'signinsignupcrud.appspot.com',
    iosClientId: '306823440491-v0o29fdpd0svfhbqa4lprcbus1mp7dpf.apps.googleusercontent.com',
    iosBundleId: 'com.example.signinSingnup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgj1jhUoSsx2PrpFbn9hgoDwimqYGTHCQ',
    appId: '1:306823440491:ios:bf7f2563e7f8846837692e',
    messagingSenderId: '306823440491',
    projectId: 'signinsignupcrud',
    storageBucket: 'signinsignupcrud.appspot.com',
    iosClientId: '306823440491-v0o29fdpd0svfhbqa4lprcbus1mp7dpf.apps.googleusercontent.com',
    iosBundleId: 'com.example.signinSingnup',
  );
}
