import 'package:flutter/material.dart';

import 'component/body.dart';

class OnBoardingScreen extends StatelessWidget {
  static String routeName = '/onboardingscreen';
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
