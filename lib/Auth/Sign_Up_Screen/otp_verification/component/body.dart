import 'package:flutter/material.dart';

import '../../../../constant.dart';
import '../../../Sign_In_Screen/Login_Success/login_success.dart';
import 'custom_continue_btn.dart';
import 'otp_desc.dart';
import 'otp_text.dart';
import 'resend_code.dart';

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
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 500) {
            return portraitMode(context);
          }

          return landscapeMode(context);
        },
      ),
    );
  }

  Column landscapeMode(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const OtpText(otpText: 'OTP Verification'),
            const OtpDesc(otpDes: 'We sent your code to '),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List.generate(
                  4,
                  (index) => buildOtpBox(
                    context,
                    '*',
                    (val) {},
                  ),
                )
              ],
            ),
            CustomContinueButton(
                text: 'Continue',
                press: () {
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }),
            const ResendCodeText(text: 'Resend Otp Code'),
          ],
        );
  }

  Container portraitMode(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: double.infinity,
      child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          const OtpText(otpText: 'OTP Verification'),
          const SizedBox(
            height: 20,
          ),
          const OtpDesc(otpDes: 'We sent your code to '),
          const Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...List.generate(
                4,
                (index) => buildOtpBox(
                  context,
                  '*',
                  (val) {},
                ),
              )
            ],
          ),
          const Spacer(
            flex: 2,
          ),
          CustomContinueButton(
              text: 'Continue',
              press: () {
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }),
          const Spacer(
            flex: 2,
          ),
          const ResendCodeText(text: 'Resend Otp Code'),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }

  Container buildOtpBox(BuildContext context, String obScure, onChange) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 01,
          color: kTextColor,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        onChanged: onChange,
        obscureText: false,
        obscuringCharacter: obScure,
        style: TextStyle(
          fontWeight: kDefaultFontBold.fontWeight,
          fontSize: 25,
        ),
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
