import 'package:flutter/material.dart';

import '../../../../constant.dart';

class ForgotText extends StatelessWidget {
  final String text;
  const ForgotText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: kDefaultFontBold.fontWeight,
        color: Colors.black,
      ),
    );
  }
}
