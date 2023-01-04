import 'package:flutter/material.dart';

import 'component/body.dart';

class WelcomeBackScreen extends StatelessWidget {
  const WelcomeBackScreen({super.key, required this.signInWithEmailAndPasswordFunction});
  static String routeName = '/welcomescreen';
  final Function signInWithEmailAndPasswordFunction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body:   Body(signInWithEmailAndPasswordFunction:signInWithEmailAndPasswordFunction ),
    );
  }
}
