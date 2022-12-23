import 'package:flutter/material.dart';

import 'social_account_card.dart';

class SocialAccount extends StatelessWidget {
  const SocialAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialAccountCard(
          img: 'assets/icons/google-icon.svg',
          press: () {},
        ),
        SocialAccountCard(
          img: 'assets/icons/facebook-2.svg',
          press: () {},
        ),
        SocialAccountCard(
          img: 'assets/icons/twitter.svg',
          press: () {},
        ),
      ],
    );
  }
}
