import 'package:flutter/material.dart';

import '../../../../constant.dart';

class ConditionText extends StatelessWidget {
  final String text;
  const ConditionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: kTextColor),
    );
  }
}
