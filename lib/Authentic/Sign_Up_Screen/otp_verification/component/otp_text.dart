import 'package:flutter/material.dart';

import '../../../../constant.dart';

class OtpText extends StatelessWidget {
  final String otpText;
  const OtpText({
    Key? key,
    required this.otpText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      otpText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: kDefaultFontBold.fontWeight,
      ),
    );
  }
}
