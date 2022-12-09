import 'package:flutter/material.dart';
import 'package:flutter1/Authentic/auth_change.dart';
import 'package:flutter1/constant.dart';
import 'package:flutter1/routes.dart';

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
      initialRoute: AuthChangeScreen.routeName,
      routes: route,
      // home: const AuthChangeScreen(),
    );
  }
}
