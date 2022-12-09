import 'package:flutter/material.dart';

class SplashIntroScreen extends StatelessWidget {
  const SplashIntroScreen({super.key});
  static String routeName = '/splashscreen';

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash_intro.gif',
      fit: BoxFit.cover,
    );
  }
}
