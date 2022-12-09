import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_Up_Screen/otp_verification/otp_verification_screen.dart';
import 'package:flutter1/Model/primary_class.dart';

class CustomContinueButton extends StatelessWidget {
  final String text;
  const CustomContinueButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrimaryClass().customPrimaryButton(context, () {
      Navigator.pushNamed(context, OtpVerificationScreen.routeName);
    }, text);
  }
}
