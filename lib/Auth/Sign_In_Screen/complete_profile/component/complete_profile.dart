import 'package:flutter/material.dart';

import '../../../../constant.dart';

class CompleteProfileText extends StatelessWidget {
  final String text;
  const CompleteProfileText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: kDefaultFontBold.fontWeight,
      ),
    );
  }
}
