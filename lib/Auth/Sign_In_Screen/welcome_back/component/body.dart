import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/welcome_back/component/signt_up_btn.dart';

import '../../../../Screen/custom_button.dart';
import '../../../../Screen/custom_text_form_field.dart';
import '../../../Sign_Up_Screen/register_screen/component/social_account.dart';
import '../../Login_Success/login_success.dart';
import 'forgot_btn.dart';
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
              CustomTextField(
                press: (value) {},
                keyboardType: TextInputType.number,
                icon: Icons.lock,
                hint: 'Enter your Email',
                label: "Email",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                press: (value) {},
                keyboardType: TextInputType.number,
                icon: Icons.lock,
                hint: 'Enter your Password',
                label: "Password",
              ),
              const SizedBox(
                height: 10 * 3,
              ),
              const ForgotButton(text: 'Remember me', txt: 'Forgot Password'),
              const SizedBox(
                height: 10 * 3,
              ),
              CustomButton(
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
              const SignUpButton(
                text: 'Don\'t have an account?',
                txt: 'Sign Up',
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
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            const WelcomeBackText(text: 'Welcome Back'),
            const WelcomeBackDesc(
                text: 'Complete your Detail and continue\n with social media'),
            const Spacer(),
            CustomTextField(
              press: (value) {},
              keyboardType: TextInputType.number,
              icon: Icons.lock,
              hint: 'Enter your Email',
              label: "Email",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              press: (value) {},
              keyboardType: TextInputType.number,
              icon: Icons.lock,
              hint: 'Enter your Password',
              label: "Password",
            ),
            const SizedBox(
              height: 10,
            ),
            const ForgotButton(text: 'Remember me', txt: 'Forgot Password'),
            const Spacer(),
            CustomButton(
              text: "Continue",
              press: () {
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              },
            ),
            const Spacer(),
            const SocialAccount(),
            const Spacer(),
            const SignUpButton(
              text: 'Don\'t have an account?',
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
