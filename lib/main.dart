import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_example/my_app.dart';
import 'package:flutter_firebase_example/services/firebase_services.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      FirebaseServices.init();
      runApp(const MyApp());
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}
