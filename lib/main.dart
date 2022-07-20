import 'package:flutter/material.dart';
import 'package:flutter_firebase_example/my_app.dart';
import 'package:flutter_firebase_example/services/firebase_services.dart';

void main() {
  FirebaseServices.init();
  runApp(const MyApp());
}
