import 'package:flutter/material.dart';

import '../../../Sign_In_Screen/Login_Success/login_success.dart';
import 'complete_profile.dart';
import 'complete_profile_desc.dart';
import 'condition_text.dart';
import 'custom_continue_btn.dart';
import 'input_text_field.dart';

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
          return portraitMode(context);
        }
        return landscapeMode(context);
      }),
    );
  }

  SingleChildScrollView landscapeMode(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CompleteProfileText(text: 'Complete Profile'),
            const CompleteProfileDesc(
                text:
                    'Complete your Detail and continue\n with social media'),
            const SizedBox(
              height: 10 * 3,
            ),
            const InputField(
                hintName: 'Enter your name',
                labelName: 'Name',
                hintLast: 'Enter your last name',
                labelLast: 'Last Name',
                hintNb: 'Enter your number',
                labelNb: 'Number',
                hintAdd: 'Enter your address',
                labelAdd: 'Address'),
            const SizedBox(
              height: 10 * 3,
            ),
            CustomContinueButton(
                text: "Continue",
                press: () {
                  Navigator.pushReplacementNamed(
                      context, LoginSuccessScreen.routeName);
                }),
            const SizedBox(
              height: 10 * 3,
            ),
            const ConditionText(
                text:
                    'By continuing your confirm that you \n with our Tearm and Condition'),
          ],
        ),
      );
  }

  Column portraitMode(BuildContext context) {
    return Column(
      children: [
        const Spacer(
          flex: 1,
        ),
        const CompleteProfileText(text: 'Complete Profile'),
        const SizedBox(
          height: 10,
        ),
        const CompleteProfileDesc(
            text: 'Complete your Detail and continue\n with social media'),
        const Spacer(
          flex: 1,
        ),
        const InputField(
            hintName: 'Enter your name',
            labelName: 'Name',
            hintLast: 'Enter your last name',
            labelLast: 'Last Name',
            hintNb: 'Enter your number',
            labelNb: 'Number',
            hintAdd: 'Enter your address',
            labelAdd: 'Address'),
        const Spacer(
          flex: 2,
        ),
        CustomContinueButton(
            text: "Continue",
            press: () {
              Navigator.pushReplacementNamed(
                  context, LoginSuccessScreen.routeName);
            }),
        const Spacer(
          flex: 1,
        ),
        const ConditionText(
            text:
                'By continuing your confirm that you \n with our Tearm and Condition'),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
