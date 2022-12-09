import 'package:flutter/material.dart';

import '../../../../constant.dart';

class ConditionText extends StatelessWidget {
  const ConditionText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'By continuing your confirm that you agre\n with our Term and Condition',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: kDefaultFontNormal.fontWeight,
        color: kTextColor,
      ),
    );
  }
}
