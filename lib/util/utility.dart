import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

class Utility {
  static void print(String log, {bool sendToFirebase = false}) {
    debugPrint(log);
    if (sendToFirebase) firebaseLog(log);
  }

  static void firebaseLog(String log) {
    FirebaseCrashlytics.instance.log(log);
  }
}
