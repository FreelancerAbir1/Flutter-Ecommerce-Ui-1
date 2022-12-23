import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant.dart';

class SocialAccountCard extends StatelessWidget {
  final String img;
  final GestureTapCallback press;
  const SocialAccountCard({
    Key? key,
    required this.img,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        elevation: 5,
        shadowColor: Colors.black,
        color: kTextLightColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: SizedBox(
          height: 40,
          width: 40,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(img),
          ),
        ),
      ),
    );
  }
}
