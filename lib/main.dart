import 'package:flutter/material.dart';
import 'package:flutter1/Responsive/responsive.dart';
import 'package:flutter1/constant.dart';
import 'package:flutter1/routes.dart';
 
import 'Responsive/Android View/android_view.dart';
import 'Responsive/Apple View/apple_view.dart';
import 'Responsive/Mac View/mac_view.dart'; 
import 'Responsive/Windows View/windows_view.dart';

void main() => runApp(
      const MyApp(), // Wrap your app
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kTextLightColor,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: kTextLightColor,
          elevation: 0,
          foregroundColor: kTextColor,
        ),
      ),
      routes: route,
      home: const ResponsiveLayout(
        myAndroidView: MyAndroidView(),
        myWindowsView: MyWindowsView(),
        myAppleView: MyAppleView(),
        myMacView: MyMacView(),
      ),
    );
  }
}
