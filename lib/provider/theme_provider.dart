import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  final ThemeData _themeData = ThemeData(
    primaryColor: Colors.blue,
    textTheme: GoogleFonts.robotoTextTheme(),
    primaryTextTheme: GoogleFonts.robotoTextTheme(),
  );

  ThemeData get themeData => _themeData;
}
