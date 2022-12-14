
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  static String routeName = '/responsivelayout';
  const ResponsiveLayout({
    super.key,
    required this.myAndroidView,
    required this.myWindowsView,
    required this.myAppleView,
    required this.myMacView,
  });
  final Widget myAndroidView;
  final Widget myAppleView;
  final Widget myWindowsView;
  final Widget myMacView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //! Android ================
        if (constraints.maxWidth <= 500) {
          return myAndroidView;
          // if (Platform.isAndroid) {
          //   return myAndroidView;
          // }
          // return myAppleView;
        }
        //! Windows====================
         return myWindowsView;
       // return Platform.isWindows ? myWindowsView : myMacView;
      },
    );
  }
} 