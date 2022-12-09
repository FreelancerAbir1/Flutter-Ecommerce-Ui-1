import 'package:flutter/material.dart';

import '../../../constant.dart';

class TokotaText extends StatelessWidget {
  final String text;
  const TokotaText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: kDefaultFontBold.fontWeight,
        fontSize: 30,
        color: kPrimaryColor,
      ),
    );
  }
}
