import 'package:flutter/material.dart';
import 'package:textfied/pages/home_screen.dart';
import 'package:textfied/pages/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
