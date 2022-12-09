import 'package:flutter/material.dart';

import '../../../../constant.dart';

class FirstStor extends StatelessWidget {
  final String storeText;
  const FirstStor({
    Key? key,
    required this.storeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      storeText,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 20,
        fontWeight: kDefaultFontBold.fontWeight,
        color: kTextColor,
      ),
    );
  }
}
