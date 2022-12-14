import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/register_screen/component/input_field.dart';
import 'package:flutter1/Auth/Sign_In_Screen/register_screen/component/social_account.dart';
import '../../../Sign_Up_Screen/complete_profile/complete_profile.dart';
import 'condition_text.dart';
import 'custom_continue_btn.dart';
import 'desc_text.dart';
import 'register_text.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10 * 3,
              ),
              const RegisterText(text: 'Back to Home'),
              const SizedBox(
                height: 15,
              ),
              const DescriptionText(
                  text:
                      'Complete your details on continue\n with social media.'),
              const SizedBox(
                height: 10 * 3,
              ),
              const InputField(
                hintEmail: 'Enter your Email',
                labelEmail: 'Email',
                hintPass: 'Enter your password',
                labelPass: 'Password',
                reEnterHintPass: 'Re_enter   password',
                reEnterLabelPass: 'Password',
              ),
              const SizedBox(
                height: 10 * 3,
              ),
              CustomContinueButton(
                text: 'Continue',
                press: () {
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                },
              ),
              const Spacer(),
              const SocialAccount(),
              const Spacer(),
              const ConditionText(),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        }
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:   [
              const RegisterText(text: 'Back to Home'),
              const DescriptionText(
                  text:
                      'Complete your details on continue\n with social media.'),
              const SizedBox(
                height: 30,
              ),
              const InputField(
                hintEmail: 'Enter your Email',
                labelEmail: 'Email',
                hintPass: 'Enter your password',
                labelPass: 'Password',
                reEnterHintPass: 'Re_enter   password',
                reEnterLabelPass: 'Password',
              ),
              const SizedBox(
                height: 30,
              ),
                CustomContinueButton(
                text: 'Continue',
                press: () {
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const SocialAccount(),
              const SizedBox(
                height: 20,
              ),
              const ConditionText(),
            ],
          ),
        );
      }),
    );
  }
}
