import 'package:flutter/material.dart';
import 'package:flutter_firebase_example/config/secure.dart';
import 'package:flutter_firebase_example/ui/page/main_page.dart';
import 'package:flutter_firebase_example/ui/page/splash_page.dart';

class NavigationService {
  static String get initialRoute => SplashPage.id;

  static var routes = {
    SplashPage.id: (context) => const SplashPage(),
    MainPage.id: (context) => const MainPage(),
  };

  static Future<T?> push<T>(Widget screen) async =>
      Secure.systemNavigatorKey.currentState?.push<T>(
        MaterialPageRoute(
          builder: (context) => screen,
        ),
      );

  static Future<dynamic> pushReplacement(Widget screen) async =>
      Secure.systemNavigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(
          builder: (context) => screen,
        ),
      );

  static Future<void> pop() async =>
      Secure.systemNavigatorKey.currentState?.pop();
}
