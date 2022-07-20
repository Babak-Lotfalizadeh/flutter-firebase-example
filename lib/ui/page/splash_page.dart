import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static const String id = "SplashPage";
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
