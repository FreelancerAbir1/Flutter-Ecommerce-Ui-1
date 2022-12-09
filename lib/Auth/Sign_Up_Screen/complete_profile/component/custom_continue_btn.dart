import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/Login_Success/login_success.dart';

import '../../../../Model/primary_class.dart';

class CustomContinueButton extends StatelessWidget {
  final String text;
  const CustomContinueButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return PrimaryClass().customPrimaryButton(context, () {
      Navigator.pushReplacementNamed(context, LoginSuccessScreen.routeName);
    }, text);
  }
}