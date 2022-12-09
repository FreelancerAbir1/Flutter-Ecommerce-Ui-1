import 'package:flutter/material.dart';

import '../../../constant.dart';

class ProductDesc extends StatelessWidget {
  final String text;
  const ProductDesc({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: kDefaultFontNormal.fontWeight,
      ),
    );
  }
}
