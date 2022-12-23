import 'package:flutter/material.dart';

import '../../../../constant.dart';

class RegisterText extends StatelessWidget {
  final String text;
  const RegisterText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        fontWeight: kDefaultFontBold.fontWeight,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}
