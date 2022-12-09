import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant.dart';

class CategoryCard extends StatelessWidget {
  final String img, txt;
  final GestureTapCallback press;
  const CategoryCard({
    super.key,
    required this.img,
    required this.txt,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red[50],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(img),
              ),
            ),
          ),
          Text(
            txt,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: kDefaultFontNormal.fontWeight,
                color: kTextColor,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
