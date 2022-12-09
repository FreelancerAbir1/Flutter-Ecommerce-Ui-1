import 'package:flutter/material.dart';

import '../../../Sign_In_Screen/register_screen/component/social_account.dart';
import 'custom_continue_btn.dart';
import 'forgot_text_screen.dart';
import 'input_field.dart';
import 'sign_up_screen.dart';
import 'welcome_back_desc.dart';
import 'welcome_back_text.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return portraitMode(context);
      }
      return landscapeMode(context);
    });
  }

  Padding landscapeMode(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                WelcomeBackText(text: 'Welcome Back'),
                WelcomeBackDesc(
                    text:
                        'Complete your Detail and continue\n with social media'),
                SocialAccount(),
                SignUpScreen(
                  text: 'Don\'t have an account?',
                  txt: 'Sign Up',
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                InputField(
                    hintEmail: 'Enter your Email',
                    labelEmail: 'Email',
                    hintPass: 'Enter your password',
                    labePass: 'Password'),
                ForgotPasswordText(text: 'Remember me', txt: 'Forgot Password'),
                CustomContinueButton(text: "Continue"),
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox portraitMode(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            SizedBox(
              height: 20,
            ),
            WelcomeBackText(text: 'Welcome Back'),
            WelcomeBackDesc(
                text: 'Complete your Detail and continue\n with social media'),
            SizedBox(
              height: 50,
            ),
            InputField(
                hintEmail: 'Enter your Email',
                labelEmail: 'Email',
                hintPass: 'Enter your password',
                labePass: 'Password'),
            SizedBox(
              height: 50,
            ),
            ForgotPasswordText(text: 'Remember me', txt: 'Forgot Password'),
            SizedBox(
              height: 50,
            ),
            CustomContinueButton(text: "Continue"),
            SizedBox(
              height: 50,
            ),
            SocialAccount(),
            SizedBox(
              height: 50,
            ),
            SignUpScreen(
              text: 'Don\'t have an account?',
              txt: 'Sign Up',
            ),
          ],
        ),
      ),
    );
  }
}
