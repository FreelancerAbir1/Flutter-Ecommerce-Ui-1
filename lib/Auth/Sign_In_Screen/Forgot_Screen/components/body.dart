import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/Forgot_Screen/components/email_input_field.dart';
import 'package:flutter1/Auth/Sign_Up_Screen/otp_verification/otp_verification_screen.dart';
import 'custom_continue_btn.dart';
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
            const EmailInputField(
                hintText: 'Enter Your Email', labelText: 'Email'),
            CustomContinueButton(
              text: "Continue",
              press: () {
                Navigator.of(context)
                    .pushNamed(OtpVerificationScreen.routeName);
              },
            ),
            const SignUpButton(
                txt: 'Don\'t have an account? ', text: 'Sign Up'),
          ],
        ),
      ),
    );
  }

  Padding portraitMode(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
            const EmailInputField(
                hintText: 'Enter Your Email', labelText: 'Email'),
            const Spacer(),
            CustomContinueButton(
              text: "Continue",
              press: () {
                Navigator.of(context).pushNamed(OtpVerificationScreen.routeName);
              },
            ),
            const Spacer(),
            const SignUpButton(txt: 'Don\'t have an account? ', text: 'Sign Up'),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
