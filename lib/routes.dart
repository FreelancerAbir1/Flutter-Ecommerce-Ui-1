 

import 'package:flutter/material.dart';

import 'Auth/Sign_In_Screen/Login_Success/login_success.dart'; 
import 'Auth/Sign_In_Screen/complete_profile/complete_profile.dart';
import 'Auth/Sign_In_Screen/welcome_back/welcome_back.dart';
import 'Auth/Sign_Up_Screen/forgot screen/forgot_screen.dart';
import 'Auth/Sign_Up_Screen/otp_verification/otp_verification_screen.dart';
import 'Auth/Sign_Up_Screen/register_screen/register_screen.dart';
import 'Auth/auth_change.dart';
import 'Screen/Cart/cart_screen.dart';
import 'Screen/Home_Screen/Splash_Intro/splash_intro_screen.dart';
import 'Screen/On_Boarding_Screen/onboarding_screen.dart';
import 'Screen/Profile_Screen/profile_screen.dart';
import 'Screen/decition_screen.dart';

final Map<String, WidgetBuilder> route = {
  AuthChangeScreen.routeName: (context) => const AuthChangeScreen(),
  RegisterAccountScreen.routeName: (context) => const RegisterAccountScreen(),
  ForgotScreen.routeName: (context) => const ForgotScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  DecitionScreen.routName: (context) => const DecitionScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpVerificationScreen.routeName: (context) => const OtpVerificationScreen(),
  OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
  WelcomeBackScreen.routeName: (context) => const WelcomeBackScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  SplashIntroScreen.routeName: (context) => const SplashIntroScreen(),
};
