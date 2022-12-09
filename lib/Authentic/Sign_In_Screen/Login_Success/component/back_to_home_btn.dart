import 'package:flutter/material.dart';
import 'package:flutter1/Screen/home_screen.dart';

import '../../../../Model/primary_class.dart';

class BackToHome extends StatelessWidget {
  final String text;
  const BackToHome({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return PrimaryClass().customPrimaryButton(context, () {
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    }, text);
  }
}
