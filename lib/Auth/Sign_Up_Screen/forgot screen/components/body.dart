import 'package:flutter/material.dart';

import '../../../../Screen/custom_button.dart';
import '../../../../Screen/custom_text_form_field.dart';
import '../../otp_verification/otp_verification_screen.dart';
import '../../register_screen/register_screen.dart';
import 'description_text.dart';
import 'forgot_text.dart';
import 'sign_up_btn.dart';

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
            SignUpButton(
              txt: 'Don\'t have an account? ',
              text: 'Sign Up',
              press: () {
                Navigator.pushNamed(context, RegisterAccountScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }

  Padding portraitMode(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const ForgotText(text: 'forgot Password'),
            const SizedBox(
              height: 10,
            ),
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
            SignUpButton(
              txt: 'Don\'t have an account? ',
              text: 'Sign Up',
              press: () {
                Navigator.pushNamed(context, RegisterAccountScreen.routeName);
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
