import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/register_screen/register_screen.dart';

import '../../../../constant.dart';

class SignUpButton extends StatelessWidget {
  final String txt, text;
  const SignUpButton({
    Key? key,
    required this.txt,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(txt),
        GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, RegisterAccountScreen.routeName),
          child: Text(
            text,
            style: TextStyle(
                fontWeight: kDefaultFontBold.fontWeight,
                fontSize: 20,
                color: kPrimaryColor,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
