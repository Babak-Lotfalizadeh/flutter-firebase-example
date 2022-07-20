import 'package:flutter/material.dart';
import 'package:flutter_firebase_example/config/secure.dart';

class SnackBarService {
  SnackBarService._();
  static show(String title) {
    if (title.isNotEmpty) {
      Secure.snackBarKey.currentState?.removeCurrentSnackBar();
      final snackBar = SnackBar(content: Text(title));
      Secure.snackBarKey.currentState?.showSnackBar(snackBar);
    }
  }
}
