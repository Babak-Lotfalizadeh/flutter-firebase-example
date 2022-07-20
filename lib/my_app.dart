import 'package:flutter/material.dart';
import 'package:flutter_firebase_example/config/secure.dart';
import 'package:flutter_firebase_example/provider/theme_provider.dart';
import 'package:flutter_firebase_example/services/navigation_service.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      scaffoldMessengerKey: Secure.snackBarKey,
      navigatorKey: Secure.systemNavigatorKey,
      theme: context.watch<ThemeProvider>().themeData,
      routes: NavigationService.routes,
      initialRoute: NavigationService.initialRoute,
    );
  }
}
