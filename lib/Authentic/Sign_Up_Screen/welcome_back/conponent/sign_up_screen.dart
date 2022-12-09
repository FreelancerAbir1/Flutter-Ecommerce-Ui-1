import 'package:flutter/material.dart';
import 'package:flutter1/Authentic/Sign_In_Screen/register_screen/register_screen.dart';

import '../../../../constant.dart';

class SignUpScreen extends StatelessWidget {
  final String text, txt;
  const SignUpScreen({
    Key? key,
    required this.text,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: kDefaultFontNormal.fontWeight, color: kTextColor),
        ),
        GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, RegisterAccountScreen.routeName),
          child: Text(
            txt,
            style: TextStyle(
                fontWeight: kDefaultFontBold.fontWeight,
                color: kPrimaryColor,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
