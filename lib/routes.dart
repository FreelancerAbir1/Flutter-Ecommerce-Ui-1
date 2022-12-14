import 'package:flutter/material.dart';
import 'package:flutter1/Auth/Sign_In_Screen/Forgot_Screen/forgot_screen.dart';
import 'package:flutter1/Auth/Sign_In_Screen/Login_Success/login_success.dart';
import 'package:flutter1/Auth/Sign_In_Screen/register_screen/register_screen.dart';
import 'package:flutter1/Auth/Sign_Up_Screen/complete_profile/complete_profile.dart';
import 'package:flutter1/Auth/Sign_Up_Screen/otp_verification/otp_verification_screen.dart';
import 'package:flutter1/Auth/Sign_Up_Screen/welcome_back/welcome_back.dart';
import 'package:flutter1/Auth/auth_change.dart';
import 'package:flutter1/Screen/Cart/cart_screen.dart';
import 'package:flutter1/Screen/Home_Screen/Splash_Intro/splash_intro_screen.dart';
import 'package:flutter1/Screen/Profile_Screen/profile_screen.dart';
import 'package:flutter1/Screen/decition_screen.dart';
import 'package:flutter1/Screen/On_Boarding_Screen/onboarding_screen.dart';

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
