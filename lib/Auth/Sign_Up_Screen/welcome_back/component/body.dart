import 'package:flutter/material.dart';

import '../../../Sign_In_Screen/Login_Success/login_success.dart';
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
              const WelcomeBackText(text: 'Welcome Back'),
              const WelcomeBackDesc(
                  text:
                      'Complete your Detail and continue\n with social media'),
              const SizedBox(
                height: 10 * 3,
              ),
              const InputField(
                  hintEmail: 'Enter your Email',
                  labelEmail: 'Email',
                  hintPass: 'Enter your password',
                  labePass: 'Password'),
              const SizedBox(
                height: 10 * 3,
              ),
              const ForgotPasswordText(
                  text: 'Remember me', txt: 'Forgot Password'),
              const SizedBox(
                height: 10 * 3,
              ),
              CustomContinueButton(
                text: "Continue",
                press: () {
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                },
              ),
              const SizedBox(
                height: 10 * 3,
              ),
              const SocialAccount(),
              const SizedBox(
                height: 10 * 3,
              ),
              const SignUpScreen(
                text: 'Don\'t have an account?',
                txt: 'Sign Up',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column portraitMode(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const WelcomeBackText(text: 'Welcome Back'),
        const WelcomeBackDesc(
            text: 'Complete your Detail and continue\n with social media'),
        const Spacer(),
        const InputField(
            hintEmail: 'Enter your Email',
            labelEmail: 'Email',
            hintPass: 'Enter your password',
            labePass: 'Password'),
        const ForgotPasswordText(text: 'Remember me', txt: 'Forgot Password'),
        const Spacer(),
        CustomContinueButton(
          text: "Continue",
          press: () {
            Navigator.pushNamed(context, LoginSuccessScreen.routeName);
          },
        ),
        const Spacer(),
        const SocialAccount(),
        const Spacer(),
        const SignUpScreen(
          text: 'Don\'t have an account?',
          txt: 'Sign Up',
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
