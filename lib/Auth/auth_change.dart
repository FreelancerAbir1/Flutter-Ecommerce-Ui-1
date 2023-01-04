import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/Screen/decition_screen.dart';

import 'Sign_In_Screen/welcome_back/welcome_back.dart';

class AuthChangeScreen extends StatefulWidget {
  const AuthChangeScreen({super.key});
  static String routeName = '/authchangescreen';

  @override
  State<AuthChangeScreen> createState() => _AuthChangeScreenState();
}

class _AuthChangeScreenState extends State<AuthChangeScreen> {
  User? user;

  Future<void> onData(userCred) async {
    setState(() {
      user = userCred;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return WelcomeBackScreen(
        signInWithEmailAndPasswordFunction: (userCred) => onData(userCred),
      );
    }
    return const DecitionScreen();
  }
}
