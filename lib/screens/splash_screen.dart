import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:language_learning_flutte/widget/animations/page_transition.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:language_learning_flutte/screens/onBoarding_screen.dart';
import 'package:language_learning_flutte/ui_kit/_ui_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const OnBoardingScreen()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ScaleTweenAnimationBuilder(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAsset.splash,
                ),
                const Text(
                  "Güzel Tılım",
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 32),
                )
              ],
            ),
          ),
        ),
      );
}
