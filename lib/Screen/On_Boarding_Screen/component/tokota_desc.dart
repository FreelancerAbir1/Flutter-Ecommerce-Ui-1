import 'package:flutter/material.dart';

import '../../../constant.dart';

class TokotaDesc extends StatelessWidget {
  const TokotaDesc({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: kDefaultFontNormal.fontWeight,
        color: kTextColor,
      ),
    );
  }
}
