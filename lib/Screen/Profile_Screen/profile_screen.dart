import 'package:flutter/material.dart';
import 'package:flutter1/Screen/decition_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });
  static String routeName = '/profilescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(DecitionScreen.routName);
                },
                icon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SvgPicture.asset('assets/icons/Back ICon.svg'),
                ));
          },
        ),
      ),
      body: ProfileBody(),
    );
  }
}
