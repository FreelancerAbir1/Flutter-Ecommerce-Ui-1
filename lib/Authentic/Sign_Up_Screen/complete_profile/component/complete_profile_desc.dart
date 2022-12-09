import 'package:flutter/material.dart';

import '../../../../constant.dart';

class CompleteProfileDesc extends StatelessWidget {
  final String text;
  const CompleteProfileDesc({
    Key? key,
    required this.text,
  }) : super(key: key);

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
