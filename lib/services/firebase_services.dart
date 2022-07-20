import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_example/firebase_options.dart';

class FirebaseServices {
  static late FirebaseAnalytics analytics;

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _initCore();
    await _initAnalytic();
    await _initCrashlytics();
  }

  static Future<void> _initCore() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static Future<void> _initAnalytic() async {
    analytics = FirebaseAnalytics.instance;
    analytics.logAppOpen();
  }

  static Future<void> _initCrashlytics() async {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  }
}
