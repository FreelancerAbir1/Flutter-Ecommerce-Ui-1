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
    double currentWidth = MediaQuery.of(context).size.width;
    double currentHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: currentHeight,
      width: currentWidth,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              WelcomeBackText(text: 'Welcome Back'),
              WelcomeBackDesc(
                  text:
                      'Complete your Detail and continue\n with social media'),
              Spacer(),
              InputField(
                  hintEmail: 'Enter your Email',
                  labelEmail: 'Email',
                  hintPass: 'Enter your password',
                  labePass: 'Password'),
              ForgotPasswordText(text: 'Remember me', txt: 'Forgot Password'),
              CustomContinueButton(text: "Continue"),
              Spacer(),
              SocialAccount(),
              Spacer(),
              SignUpScreen(
                text: 'Don\'t have an account?',
                txt: 'Sign Up',
              ),
              SizedBox(
                height: 20,
              )
            ],
          );
        }
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              WelcomeBackText(text: 'Welcome Back'),
              WelcomeBackDesc(
                  text:
                      'Complete your Detail and continue\n with social media'),
              SizedBox(
                height: 10 * 3,
              ),
              InputField(
                  hintEmail: 'Enter your Email',
                  labelEmail: 'Email',
                  hintPass: 'Enter your password',
                  labePass: 'Password'),
              SizedBox(
                height: 10 * 3,
              ),
              ForgotPasswordText(text: 'Remember me', txt: 'Forgot Password'),
              SizedBox(
                height: 10 * 3,
              ),
              CustomContinueButton(text: "Continue"),
              SizedBox(
                height: 10 * 3,
              ),
              SocialAccount(),
              SizedBox(
                height: 10 * 3,
              ),
              SignUpScreen(
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
