import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'onboarding.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2500,
      splash: "assets/images/logo.png",
      splashIconSize: 50,
      nextScreen:const OnBoarding(),
      pageTransitionType: PageTransitionType.bottomToTop,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}