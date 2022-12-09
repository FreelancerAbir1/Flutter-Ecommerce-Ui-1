import 'package:flutter/material.dart';

import '../../../../constant.dart';

class OtpDesc extends StatelessWidget {
  final String otpDes;
  const OtpDesc({
    Key? key,
    required this.otpDes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: otpDes,
            style: TextStyle(
              fontWeight: kDefaultFontNormal.fontWeight,
              color: kTextColor,
            ),
          ),
          TextSpan(
            text: '++880  ${'1722734871'}\n ',
            style: TextStyle(
              fontWeight: kDefaultFontNormal.fontWeight,
              color: kPrimaryColor,
            ),
          ),
          TextSpan(
            text: 'this code expired in ',
            style: TextStyle(
              fontWeight: kDefaultFontNormal.fontWeight,
              color: kTextColor,
            ),
          ),
          TextSpan(
            text: '${'00:30'} ',
            style: TextStyle(
              fontWeight: kDefaultFontNormal.fontWeight,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
