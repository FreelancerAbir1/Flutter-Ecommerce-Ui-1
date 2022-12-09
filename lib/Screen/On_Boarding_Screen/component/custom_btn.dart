import 'package:flutter/material.dart';
import 'package:flutter1/Authentic/Sign_Up_Screen/welcome_back/welcome_back.dart';

import '../../../Model/primary_class.dart';

class CustomContinueButton extends StatelessWidget {
  final String text;
  const CustomContinueButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return PrimaryClass().customPrimaryButton(context, () {
      Navigator.pushReplacementNamed(context, WelcomeBackScreen.routeName);
    }, text);
  }
}
