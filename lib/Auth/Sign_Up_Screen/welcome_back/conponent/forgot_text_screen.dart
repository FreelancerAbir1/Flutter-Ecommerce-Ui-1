import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/Forgot_Screen/forgot_screen.dart';

import '../../../../constant.dart';

class ForgotPasswordText extends StatelessWidget {
  final String text, txt;
  const ForgotPasswordText({
    Key? key,
    required this.text,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            checkColor: kPrimaryColor,
            activeColor: Colors.white,
            value: false,
            onChanged: (value) {},
            title: Text(
              text,
              style: TextStyle(
                  fontWeight: kDefaultFontNormal.fontWeight, color: kTextColor),
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, ForgotScreen.routeName),
            child: Text(
              txt,
              style: TextStyle(
                  fontWeight: kDefaultFontNormal.fontWeight,
                  decoration: TextDecoration.underline,
                  color: kTextColor),
            ),
          ),
        ),
      ],
    );
  }
}
