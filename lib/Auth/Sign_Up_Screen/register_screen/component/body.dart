import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/Screen/custom_button.dart';
import '../../../Sign_In_Screen/complete_profile/complete_profile.dart';
import 'condition_text.dart';
import 'custom_text_field.dart';
import 'desc_text.dart';
import 'register_text.dart';
import 'social_account.dart';
//! Complete register screen

class Body extends StatelessWidget {
  Body({super.key});

//! Sign in account here method---------------------------
 
  Future<void> createUserWithEmailAndPassword(context) async { FirebaseAuth auth = FirebaseAuth.instance;
    try {
      if (inputEmailController.text.isNotEmpty &&
          inputPasswordController.text == inputConfirmPasswordController.text) {
        await auth.createUserWithEmailAndPassword(
            email: inputEmailController.text,
            password: inputPasswordController.text);
        //! Current state snackbar show

        Navigator.of(context)
            .pushReplacementNamed(CompleteProfileScreen.routeName);
      } else if (inputEmailController.text.isNotEmpty && inputPasswordController.text !=
          inputConfirmPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Password does not match.Please re-type again."),
          ),
        );
      } else if (inputConfirmPasswordController.text.isEmpty ||
          inputConfirmPasswordController.text.isEmpty ||
          inputEmailController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(" Black Field not allow."),
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('The password provided is too weak.')),
        );
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('The account already exists for that email.')),
        );
      }
    }
  }

//! Text input field here-------------------------------------
  final TextEditingController inputEmailController = TextEditingController();
  final TextEditingController inputPasswordController = TextEditingController();
  final TextEditingController inputConfirmPasswordController =
      TextEditingController();
  //! Global Form key here
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
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
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const RegisterText(text: 'Register Account'),
                const DescriptionText(
                    text:
                        'Complete your details on continue\n with social media.'),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  kController: inputEmailController,
                  press: (value) {},
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.lock,
                  hint: 'Enter your Email',
                  label: "Email",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  kController: inputPasswordController,
                  press: (value) {},
                  keyboardType: TextInputType.name,
                  icon: Icons.lock,
                  hint: 'Enter your Password',
                  label: "Password",
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  kController: inputConfirmPasswordController,
                  press: (value) {},
                  keyboardType: TextInputType.name,
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
                    createUserWithEmailAndPassword(context);
                    if (_key.currentState!.validate()) {}
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
      ),
    );
  }

  SingleChildScrollView portraitMode(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const RegisterText(text: 'Register Account'),
                const DescriptionText(
                    text:
                        'Complete your details on continue\n with social media.'),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  kController: inputEmailController,
                  press: (value) {},
                  keyboardType: TextInputType.number,
                  icon: Icons.lock,
                  hint: 'Enter your Email',
                  label: "Email",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  kController: inputPasswordController,
                  press: (value) {},
                  keyboardType: TextInputType.number,
                  icon: Icons.lock,
                  hint: 'Enter your Password',
                  label: "Password",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  kController: inputConfirmPasswordController,
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
                    createUserWithEmailAndPassword(context);
                    if (_key.currentState!.validate()) {}
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                const SocialAccount(),
                const SizedBox(
                  height: 30,
                ),
                const ConditionText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
