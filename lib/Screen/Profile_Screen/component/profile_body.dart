 

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../Auth/Sign_In_Screen/welcome_back/welcome_back.dart';
import 'profile_account_list.dart';
import 'profile_image.dart';

// ignore: must_be_immutable
class ProfileBody extends StatelessWidget {
  ProfileBody({super.key});

  String profilePic = 'assets/images/Abir.jpg';

  String imagePicker = 'assets/icons/Camera Icon.svg';

  FirebaseAuth auth = FirebaseAuth.instance;
  //! Log Out mehtod here
  Future signOut(context) async {
    try {
      await auth.signOut();
      Navigator.of(context).pushReplacementNamed(WelcomeBackScreen.routeName);
    } catch (e) {
      return null;
    }
  }
 
  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: currentWidth,
      child: ListView(
        children: [
          ProfileImage(profilePic: profilePic, imagePicker: imagePicker),
          const SizedBox(
            height: 30,
          ),
         ProfileAccountList(
      press: () {},
      title: 'My Account',
      leading: "assets/icons/User.svg",
      trailing: 'assets/icons/arrow_right.svg',
    ),
    ProfileAccountList(
      press: () {},
      title: 'Notification',
      leading: "assets/icons/Bell.svg",
      trailing: 'assets/icons/arrow_right.svg',
    ),
    ProfileAccountList(
      press: () {},
      title: 'Settings',
      leading: "assets/icons/Settings.svg",
      trailing: 'assets/icons/arrow_right.svg',
    ),
    ProfileAccountList(
      press: () {},
      title: 'Help Center',
      leading: "assets/icons/Question mark.svg",
      trailing: 'assets/icons/arrow_right.svg',
    ),
    ProfileAccountList(
      press: ()  {
        signOut(context);
      },
      title: 'Log Out',
      leading: "assets/icons/Log out.svg",
      trailing: 'assets/icons/arrow_right.svg',
    ),
        ],
      ),
    );
  }
}
