import 'package:flutter/material.dart';

import 'conponent/body.dart';

class WelcomeBackScreen extends StatelessWidget {
  const WelcomeBackScreen({super.key});
  static String routeName = '/welcomescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: const Body(),
    );
  }
}