import 'package:flutter/material.dart';
import 'package:language_learning_flutte/screens/home_screen.dart';
import 'package:language_learning_flutte/screens/lessons_screen.dart';
import 'package:language_learning_flutte/ui_kit/_ui_kit.dart';
import 'package:language_learning_flutte/widget/animations/page_transition.dart';

class HappyScreen extends StatelessWidget {
  const HappyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTweenAnimationBuilder(
              child: Column(
                children: [
                  Image.asset(AppAsset.happyScreen),
                  const SizedBox(height: 16),
                  const Text(
                    "ПОЗДРАВЛЯЕМ!!!",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 40,
              width: 260,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFFfedbdf)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                      ),
                  );
                },
                child: const Text("Продолжить"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
