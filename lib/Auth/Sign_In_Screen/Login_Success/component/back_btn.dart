import 'package:flutter/material.dart';

import '../../../../constant.dart';

class BackHomeButton extends StatelessWidget {
  final String text;
  final Function() press;
  const BackHomeButton({super.key, required this.text, required this.press});

  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: currentWidth <= 500 ? currentWidth / 1.1 : currentWidth / 1.7,
      child: Center(
          child: MaterialButton(
        onPressed: press,
        color: kPrimaryColor,
        height: 50,
        minWidth: MediaQuery.of(context).size.width / 1.1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: kDefaultFontBold.fontWeight,
              fontSize: 20,
              color: kTextLightColor),
        ),
      )),
    );
  }
}
