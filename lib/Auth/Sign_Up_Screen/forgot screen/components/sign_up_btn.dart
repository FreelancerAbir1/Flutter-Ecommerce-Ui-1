import 'package:flutter/material.dart';

import '../../../../constant.dart';

class SignUpButton extends StatelessWidget {
  final String txt, text;
  final Function()  press;
  const SignUpButton({
    Key? key,
    required this.txt, required this.text, required this.press, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          txt,
          style: const TextStyle(
            color: kTextColor,
          ),
        ),
        GestureDetector(
          onTap:  press,
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
