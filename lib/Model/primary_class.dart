import 'package:flutter/material.dart';

import '../constant.dart';

class PrimaryClass {
  //! layout change here code

  //custom continue button
  MaterialButton customPrimaryButton(
    BuildContext context,
    press,
    text,
  ) {
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
