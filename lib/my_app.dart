import 'package:flutter/material.dart';
import 'package:flutter_firebase_example/provider/theme_provider.dart';
import 'package:flutter_firebase_example/ui/page/splash_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase',
      theme: context.watch<ThemeProvider>().themeData,
      home: const SplashPage(),
    );
  }
}
