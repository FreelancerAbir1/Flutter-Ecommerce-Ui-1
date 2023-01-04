
import 'package:flutter/material.dart';

import 'Responsive/Android View/android_view.dart';
import 'Responsive/Apple View/apple_view.dart';
import 'Responsive/Mac View/mac_view.dart';
import 'Responsive/Windows View/windows_view.dart';
import 'Responsive/responsive.dart';
import 'constant.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce Demo',
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
