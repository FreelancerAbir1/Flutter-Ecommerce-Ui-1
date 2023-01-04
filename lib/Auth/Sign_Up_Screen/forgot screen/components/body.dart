import 'package:flutter/material.dart';

import '../../../../Screen/custom_button.dart';
import '../../../Sign_In_Screen/welcome_back/component/signt_up_btn.dart';
import '../../otp_verification/otp_verification_screen.dart';
import 'custom_text_field.dart';
import 'description_text.dart';
import 'forgot_text.dart';

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

  SizedBox landscapeMode(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ForgotText(text: 'forgot Password'),
            const DescriptionText(
              text:
                  'Please enter your Email and we sent a verification\n code and return the code ',
            ),
            CustomTextField(
              press: (value) {},
              keyboardType: TextInputType.number,
              icon: Icons.lock,
              hint: 'Enter your Email',
              label: "Email",
            ),
            CustomButton(
              text: "Continue",
              press: () {
                Navigator.of(context)
                    .pushNamed(OtpVerificationScreen.routeName);
              },
            ),
            const SignUpButton(
              text: 'Don\'t have an account? ',
              txt: 'Sign Up',
            ),
          ],
        ),
      ),
    );
  }

  SizedBox portraitMode(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            const ForgotText(text: 'forgot Password'),
            const Spacer(),
            const DescriptionText(
              text:
                  'Please enter your Email and we sent a verification\n code and return the code ',
            ),
            const Spacer(),
            CustomTextField(
              press: (value) {},
              keyboardType: TextInputType.number,
              icon: Icons.lock,
              hint: 'Enter your Email',
              label: "Email",
            ),
            const Spacer(),
            CustomButton(
              text: "Continue",
              press: () {
                Navigator.of(context)
                    .pushNamed(OtpVerificationScreen.routeName);
              },
            ),
            const Spacer(),
            const SignUpButton(
              text: 'Don\'t have an account? ',
              txt: 'Sign Up',
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
