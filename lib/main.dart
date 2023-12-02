import 'package:flutter/material.dart';
import 'package:language_learning_flutte/screens/home_screen.dart';
import 'package:language_learning_flutte/screens/lessons_screen.dart';
import 'package:language_learning_flutte/screens/splash_screen.dart';
import 'ui_kit/_ui_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}
