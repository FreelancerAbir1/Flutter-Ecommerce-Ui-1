import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/Login_Success/component/back_btn.dart';
import 'package:flutter1/Screen/decition_screen.dart';

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
            children: [
              const Spacer(),
              const LoginSuccessImg(img: 'assets/images/success.png'),
              const Spacer(),
              const LoginSuccessText(text: 'Login Success'),
              const Spacer(),
              BackHomeButton(
                text: 'Back to Home',
                press: () {
                  Navigator.of(context).pushNamed(DecitionScreen.routName);
                },
              ),
              const Spacer(),
            ],
          );
        }
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 30,
              ),
              const LoginSuccessImg(img: 'assets/images/success.png'),
              const SizedBox(
                height: 30,
              ),
              const LoginSuccessText(text: 'Login Success'),
              const SizedBox(
                height: 30,
              ),
              BackHomeButton(
                text: 'Back to Home',
                press: () {
                  Navigator.of(context).pushNamed(DecitionScreen.routName);
                },
              ),
              const SizedBox(
                height: 10 * 3,
              ),
            ],
          ),
        );
      }),
    );
  }
}
