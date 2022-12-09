import 'package:flutter/material.dart';

import '../../../../constant.dart';

class BannerBoard extends StatelessWidget {
  final String sTxt, cTxt;
  const BannerBoard({
    Key? key,
    required this.sTxt,
    required this.cTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      height: 100,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: kBannerColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sTxt,
            style: TextStyle(
              color: kTextLightColor,
              fontWeight: kDefaultFontNormal.fontWeight,
            ),
          ),
          Text(
            cTxt,
            style: TextStyle(
                color: kTextLightColor,
                fontWeight: kDefaultFontBold.fontWeight,
                fontSize: 30),
          )
        ],
      ),
    );
  }
}
