import 'package:flutter/material.dart';
import 'package:language_learning_flutte/ui_kit/_ui_kit.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StatefulWidget> createState() => StartScreenState();
}

class StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) => Center(
    child: Image.asset(AppAsset.logo),
  );
}
