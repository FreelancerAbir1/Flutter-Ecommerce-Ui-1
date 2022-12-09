import 'package:flutter/material.dart';

import '../../../../constant.dart';

class ResendCodeText extends StatelessWidget {
  final String text;
  const ResendCodeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: kTextColor, fontWeight: kDefaultFontNormal.fontWeight),
    );
  }
}
