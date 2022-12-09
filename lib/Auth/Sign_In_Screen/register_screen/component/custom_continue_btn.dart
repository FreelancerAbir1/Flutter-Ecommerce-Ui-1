import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_Up_Screen/complete_profile/complete_profile.dart';

import '../../../../Model/primary_class.dart';

class CustomContinueButton extends StatelessWidget {
  const CustomContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryClass().customPrimaryButton(context, () {
      Navigator.pushNamed(context, CompleteProfileScreen.routeName);
    }, 'Continue');
  }
}
