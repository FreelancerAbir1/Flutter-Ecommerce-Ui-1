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
    double currentWidth = MediaQuery.of(context).size.width;
    double currentHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: currentHeight,
      width: currentWidth,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:   [
              const WelcomeBackText(text: 'Welcome Back'),
              const WelcomeBackDesc(
                  text:
                      'Complete your Detail and continue\n with social media'),
              const Spacer(),
              const InputField(
                  hintEmail: 'Enter your Email',
                  labelEmail: 'Email',
                  hintPass: 'Enter your password',
                  labePass: 'Password'),
              const ForgotPasswordText(text: 'Remember me', txt: 'Forgot Password'),
              const Spacer(),
              CustomContinueButton(text: "Continue",press: (){  Navigator.pushNamed(context, LoginSuccessScreen.routeName);},),
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
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:   [
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
              const ForgotPasswordText(text: 'Remember me', txt: 'Forgot Password'),
              const SizedBox(
                height: 10 * 3,
              ),
               CustomContinueButton(text: "Continue",press: (){  Navigator.pushNamed(context, LoginSuccessScreen.routeName);},),
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
        );
      }),
    );
  }
}
