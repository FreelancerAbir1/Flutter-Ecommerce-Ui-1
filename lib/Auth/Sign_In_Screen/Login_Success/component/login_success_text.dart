import 'package:flutter/material.dart';

import '../../../../constant.dart';

class LoginSuccessText extends StatelessWidget {
  final String text;
  const LoginSuccessText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontWeight: kDefaultFontBold.fontWeight, fontSize: 30),
      ),
    );
  }
}
