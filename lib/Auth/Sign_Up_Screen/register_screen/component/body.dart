import 'package:flutter/material.dart';
import 'package:flutter1/Screen/custom_button.dart'; 
import '../../../../Screen/custom_text_form_field.dart';
import '../../../Sign_In_Screen/complete_profile/complete_profile.dart';
import 'condition_text.dart';
import 'desc_text.dart';
import 'register_text.dart';
import 'social_account.dart';

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
            const RegisterText(text: 'Register Account'),
            const DescriptionText(
                text: 'Complete your details on continue\n with social media.'),
            const SizedBox(
              height: 30,
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
              height: 10,
            ),
            CustomTextField(
              press: (value) {},
              keyboardType: TextInputType.number,
              icon: Icons.lock,
              hint: 'Re-Enter your Password',
              label: "Password",
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const RegisterText(text: 'Register Account'),
          const DescriptionText(
              text: 'Complete your details on continue\n with social media.'),
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
          CustomTextField(
            press: (value) {},
            keyboardType: TextInputType.number,
            icon: Icons.lock,
            hint: 'Re-Enter your Password',
            label: "Password",
          ),
          const Spacer(),
          CustomButton(
            text: 'Continue',
            press: () {
              Navigator.pushNamed(context, CompleteProfileScreen.routeName);
            },
          ),
          const Spacer(),
          const SocialAccount(),
          const Spacer(),
          const ConditionText(),
          const Spacer(),
        ],
      ),
    ),
  );
}
