import 'package:flutter/material.dart';
import 'package:flutter1/Authentic/Sign_In_Screen/Login_Success/component/back_to_home_btn.dart';

import 'login_success_image.dart';
import 'login_success_text.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Spacer(),
        LoginSuccessImg(img: 'assets/images/success.png'),
        Spacer(),
        LoginSuccessText(text: 'Login Success'),
        Spacer(),
        BackToHome(text: 'Back to Home'),
        Spacer(),
      ],
    );
  }
}
