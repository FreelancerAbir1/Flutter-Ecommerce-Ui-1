import 'package:flutter/material.dart';

import '../../../constant.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () {},
      child: Text(
        'Check Out',
        style: TextStyle(
            fontWeight: kDefaultFontBold.fontWeight,
            fontSize: 20,
            color: kTextLightColor),
      ),
    );
  }
}
