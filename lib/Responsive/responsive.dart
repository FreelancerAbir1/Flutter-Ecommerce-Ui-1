
import 'package:flutter/material.dart'; 

class ResponsiveLayout extends StatelessWidget {
  static String routeName = '/responsivelayout';
  const ResponsiveLayout({
    super.key,
    required this.myAndroidView,
    required this.myTabletView,
    required this.myWindowsView,
    required this.myAppleView,
    required this.myIpadView,
    required this.myMacView,
  });
  final Widget myAndroidView;
  final Widget myTabletView;
  final Widget myAppleView;
  final Widget myIpadView;
  final Widget myWindowsView;
  final Widget myMacView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //! Android ================
        if (constraints.maxWidth <= 500) {
          return myAndroidView;
          // if (Platform.isWindows) {
          //   return myAndroidView;
          // }
          // return myAppleView;
        } else if (constraints.maxWidth > 500 && constraints.maxWidth <= 1024) {
          //! Tablet ================
          return myTabletView;
          // if (Platform.isWindows) {
          //   return myTabletView;
          // }
          // return myIpadView;
        }
        // return Platform.isWindows ? myWindowsView : myMacView;
        //! Windows==================== 
        return myWindowsView;
      },
    );
  }
}
