import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:maoulaoui/screens/onboardingscreen/onboardingscreen.dart';
import 'package:maoulaoui/shared/resources/asset_manager.dart';

class SplashScreen extends StatefulWidget {
  static const String route = "/SplashPage";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentImageIndex = 0;
  final List<String> splashImages = [
    AppAssets.splash1,
    AppAssets.splash2,
    AppAssets.splash3,
    AppAssets.splash4,
    AppAssets.splash5,
  ];

  @override
  void initState() {
    super.initState();
    startImageSequence();
  }

  void startImageSequence() {
    Timer.periodic(const Duration(milliseconds: 1500), (timer) {
      if (currentImageIndex < splashImages.length - 1) {
        setState(() {
          currentImageIndex++;
        });
      } else {
        timer.cancel();
        navigateToMainScreen();
      }
    });
  }

  void navigateToMainScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnboardingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C3436),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          child: SvgPicture.asset(
            splashImages[currentImageIndex],
            key: ValueKey(currentImageIndex),
            fit: BoxFit.cover,
            width: currentImageIndex == 4 ? 41 : 285,
            height: currentImageIndex == 4 ? 73 : 285,
          ),
        ),
      ),
    );
  }
}
