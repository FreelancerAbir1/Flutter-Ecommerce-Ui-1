import 'package:flutter/material.dart';

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
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                Spacer(
                  flex: 1,
                ),
                CompleteProfileText(text: 'Complete Profile'),
                SizedBox(
                  height: 10,
                ),
                CompleteProfileDesc(
                    text:
                        'Complete your Detail and continue\n with social media'),
                Spacer(
                  flex: 1,
                ),
                InputField(
                    hintName: 'Enter your name',
                    labelName: 'Name',
                    hintLast: 'Enter your last name',
                    labelLast: 'Last Name',
                    hintNb: 'Enter your number',
                    labelNb: 'Number',
                    hintAdd: 'Enter your address',
                    labelAdd: 'Address'),
                Spacer(
                  flex: 2,
                ),
                CustomContinueButton(text: "Continue"),
                Spacer(
                  flex: 1,
                ),
                ConditionText(
                    text:
                        'By continuing your confirm that you \n with our Tearm and Condition'),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CompleteProfileText(text: 'Complete Profile'),
                CompleteProfileDesc(
                    text:
                        'Complete your Detail and continue\n with social media'),
                SizedBox(
                  height: 10 * 3,
                ),
                InputField(
                    hintName: 'Enter your name',
                    labelName: 'Name',
                    hintLast: 'Enter your last name',
                    labelLast: 'Last Name',
                    hintNb: 'Enter your number',
                    labelNb: 'Number',
                    hintAdd: 'Enter your address',
                    labelAdd: 'Address'),
                SizedBox(
                  height: 10 * 3,
                ),
                CustomContinueButton(text: "Continue"),
                SizedBox(
                  height: 10 * 3,
                ),
                ConditionText(
                    text:
                        'By continuing your confirm that you \n with our Tearm and Condition'),
              ],
            ),
          ),
        );
      }),
    );
  }
}
