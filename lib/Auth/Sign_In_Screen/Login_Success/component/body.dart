import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/Login_Success/component/back_to_home_btn.dart';

import 'login_success_image.dart';
import 'login_success_text.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
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
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                height: 30,
              ),
              LoginSuccessImg(img: 'assets/images/success.png'),
              SizedBox(
                height: 30,
              ),
              LoginSuccessText(text: 'Login Success'),
              SizedBox(
                height: 30,
              ),
              BackToHome(text: 'Back to Home'),
              SizedBox(
                height: 10 * 3,
              ),
            ],
          ),
        );
      }),
    );
  }
}
