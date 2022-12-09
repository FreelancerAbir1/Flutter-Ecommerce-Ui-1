import 'package:flutter/material.dart';
import 'package:flutter1/Authentic/Sign_In_Screen/register_screen/component/input_field.dart';
import 'package:flutter1/Authentic/Sign_In_Screen/register_screen/component/social_account.dart';
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
    return Column(
      children: const [
        SizedBox(
          height: 10 * 3,
        ),
        RegisterText(text: 'Back to Home'),
        SizedBox(
          height: 15,
        ),
        DescriptionText(
            text: 'Complete your details on continue\n with social media.'),
        SizedBox(
          height: 10 * 3,
        ),
        InputField(
          hintEmail: 'Enter your Email',
          labelEmail: 'Email',
          hintPass: 'Enter your password',
          labelPass: 'Password',
          reEnterHintPass: 'Re_enter   password',
          reEnterLabelPass: 'Password',
        ),
        SizedBox(
          height: 10 * 3,
        ),
        CustomContinueButton(),
        Spacer(),
        SocialAccount(),
        Spacer(),
        ConditionText(),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
