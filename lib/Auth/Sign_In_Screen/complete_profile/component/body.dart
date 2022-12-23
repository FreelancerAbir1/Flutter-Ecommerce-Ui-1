 

import 'package:flutter/material.dart';

import '../../../../Screen/custom_button.dart';
import '../../../../Screen/custom_text_form_field.dart';
import '../../Login_Success/login_success.dart';
import 'complete_profile.dart';
import 'complete_profile_desc.dart';
import 'condition_text.dart';

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
              const CompleteProfileText(text: 'Complete Profile'),
              const CompleteProfileDesc(
                  text:
                      'Complete your Detail and continue\n with social media'),
              const SizedBox(
                height: 10 * 3,
              ),
              CustomTextField(
                press: (value) {},
                keyboardType: TextInputType.number,
                icon: Icons.lock,
                hint: 'Enter your Name',
                label: "Name",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                press: (value) {},
                keyboardType: TextInputType.number,
                icon: Icons.lock,
                hint: 'Enter your Last Name',
                label: "Name",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                press: (value) {},
                keyboardType: TextInputType.number,
                icon: Icons.lock,
                hint: 'Enter your Number',
                label: "Number",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                press: (value) {},
                keyboardType: TextInputType.number,
                icon: Icons.lock,
                hint: 'Enter your Address',
                label: "Address",
              ),
              const SizedBox(
                height: 10 * 3,
              ),
              CustomButton(
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
            CustomTextField(
              press: (value) {},
              keyboardType: TextInputType.number,
              icon: Icons.lock,
              hint: 'Enter your Name',
              label: "Name",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              press: (value) {},
              keyboardType: TextInputType.number,
              icon: Icons.lock,
              hint: 'Enter your Last Name',
              label: "Name",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              press: (value) {},
              keyboardType: TextInputType.number,
              icon: Icons.lock,
              hint: 'Enter your Number',
              label: "Number",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              press: (value) {},
              keyboardType: TextInputType.number,
              icon: Icons.lock,
              hint: 'Enter your Address',
              label: "Address",
            ),
            const Spacer(
              flex: 2,
            ),
            CustomButton(
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
        ),
      ),
    );
  }
}
