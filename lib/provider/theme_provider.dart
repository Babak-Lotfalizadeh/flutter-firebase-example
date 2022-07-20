import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  final ThemeData _themeData = ThemeData(
    primaryColor: Colors.red,
  );

  ThemeData get themeData => _themeData;
}
