 
import 'package:flutter/material.dart';
import 'package:flutter1/Screen/custom_button.dart';
  
import '../../../../Screen/decition_screen.dart';
import 'login_success_image.dart';
import 'login_success_text.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return portraitMode(context);
    }
    return landscapeMode(context);
  }

  SingleChildScrollView landscapeMode(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20),
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
              CustomButton(
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
        ),
      ),
    );
  }

  SizedBox portraitMode(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Spacer(),
          const LoginSuccessImg(img: 'assets/images/success.png'),
          const Spacer(),
          const LoginSuccessText(text: 'Login Success'),
          const Spacer(),
          CustomButton(
            text: 'Back to Home',
            press: () {
              Navigator.of(context).pushNamed(DecitionScreen.routName);
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
