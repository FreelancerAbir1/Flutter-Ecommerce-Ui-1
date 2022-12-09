import 'package:flutter/material.dart';

import '../../../../constant.dart';

class DescriptionText extends StatelessWidget {
  final String text;
  const DescriptionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: kDefaultFontNormal.fontWeight,
        color: kTextColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}
