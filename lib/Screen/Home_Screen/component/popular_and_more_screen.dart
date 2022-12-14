import 'package:flutter/material.dart';

import '../../../constant.dart';

class PopularAndMoreScreen extends StatelessWidget {
  final String text;
  final String txt;
  const PopularAndMoreScreen({
    Key? key,
    required this.text,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: kDefaultFontNormal.fontWeight,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              txt,
              style: TextStyle(
                fontWeight: kDefaultFontNormal.fontWeight,
                fontSize: 17,
                color: kTextColor,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
