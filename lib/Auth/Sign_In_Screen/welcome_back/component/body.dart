import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/welcome_back/component/signt_up_btn.dart';
 

import '../../../../Screen/custom_button.dart';
import '../../../Sign_Up_Screen/register_screen/component/social_account.dart';
import 'custom_text_field.dart';
import 'forgot_btn.dart';
import 'welcome_back_desc.dart';
import 'welcome_back_text.dart';
//! Complete welcome screen

class Body extends StatelessWidget {
  final Function signInWithEmailAndPasswordFunction;
  Body({
    Key? key,
    required this.signInWithEmailAndPasswordFunction,
  }) : super(key: key);

//! Sign in account here method---------------------------

 
  Future<void> signInWithEmailAndPassword(context) async { FirebaseAuth auth = FirebaseAuth.instance;
    try {
      //! Current state snackbar show
      if (inputEmailController.text.isNotEmpty &&
          inputPasswordController.text.isNotEmpty) {
        final credential = await auth.signInWithEmailAndPassword(
            email: inputEmailController.text,
            password: inputPasswordController.text);
        //! Return Data
        return signInWithEmailAndPasswordFunction(credential.user);
      } else if (inputEmailController.text.isEmpty ||
          inputPasswordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(" Black Field not allow."),
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No user found for that email.')),
        );
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No user found for that email.')),
        );
      }
    }
  }

//! Text input field here-------------------------------------
  final TextEditingController inputEmailController = TextEditingController();
  final TextEditingController inputPasswordController = TextEditingController();
  //! Global Form key here
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    if (orientation == Orientation.portrait) {
      return portraitMode(context);
    }
    return landscapeMode(context);
  }

//! Orientaion Builder
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
                const WelcomeBackText(text: 'Welcome Back'),
                const WelcomeBackDesc(
                    text:
                        'Complete your Detail and continue\n with social media'),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  kController: inputEmailController,
                  press: (value) {},
                  keyboardType: TextInputType.name,
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
                  keyboardType: TextInputType.number,
                  icon: Icons.lock,
                  hint: 'Enter your Password',
                  label: "Password",
                ),
                const SizedBox(
                  height: 10,
                ),
                const ForgotButton(text: 'Remember me', txt: 'Forgot Password'),
                const SizedBox(
                  height: 10 * 3,
                ),
                CustomButton(
                  text: "Continue",
                  press: () {
                    //! Sign in account press here
                    signInWithEmailAndPassword(context);
                    if (_key.currentState!.validate()) {}
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const SocialAccount(),
                const SizedBox(
                  height: 10,
                ),
                const SignUpButton(
                  text: 'Don\'t have an account?',
                  txt: 'Sign Up',
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
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
        child: Form(
          key: _key,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const WelcomeBackText(text: 'Welcome Back'),
                const WelcomeBackDesc(
                    text:
                        'Complete your Detail and continue\n with social media'),
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
                  height: 20,
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
                  height: 30,
                ),
                const ForgotButton(text: 'Remember me', txt: 'Forgot Password'),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "Continue",
                  press: () {
                    //! Sign in account press here
                    signInWithEmailAndPassword(context);
                    //!validate press here
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
                const SignUpButton(
                  text: 'Don\'t have an account?',
                  txt: 'Sign Up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
