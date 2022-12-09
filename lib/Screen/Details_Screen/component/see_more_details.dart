import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class SeeMoreDetails extends StatelessWidget {
  final String text;
  final String icon;
  const SeeMoreDetails({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: kDefaultFontBold.fontWeight,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            icon,
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
