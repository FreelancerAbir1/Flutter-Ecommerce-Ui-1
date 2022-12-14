import 'package:flutter/material.dart';
 
import '../../../../constant.dart';

class CustomContinueButton extends StatelessWidget {
  final String text;
  final Function() press;
  const CustomContinueButton({super.key, required this.text, required this.press});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
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
    );
  }
}
