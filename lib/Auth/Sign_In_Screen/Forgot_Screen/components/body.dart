import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/Forgot_Screen/components/email_input_field.dart';
import 'custom_continue_btn.dart';
import 'description_text.dart';
import 'forgot_text.dart';
import 'sign_up_btn.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            height: 30,
          ),
          ForgotText(text: 'forgot Password'),
          SizedBox(
            height: 10,
          ),
          DescriptionText(
            text:
                'Please enter your Email and we sent a verification\n code and return the code ',
          ),
          Spacer(),
          EmailInputField(hintText: 'Enter Your Email', labelText: 'Email'),
          Spacer(),
          CustomContinueButton(text: "Continue"),
          Spacer(),
          SignUpButton(txt: 'Don\'t have an account? ', text: 'Sign Up'),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
