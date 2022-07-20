import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_example/my_app.dart';
import 'package:flutter_firebase_example/provider/theme_provider.dart';
import 'package:flutter_firebase_example/services/firebase_services.dart';
import 'package:provider/provider.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      FirebaseServices.init();
      runTheApp();
    },
    (error, stack) =>
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true),
  );
}

void runTheApp() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (c) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}
