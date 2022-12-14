import 'package:flutter/material.dart';
import 'package:flutter1/Screen/Profile_Screen/profile_screen.dart';
import 'package:flutter_svg/svg.dart';

import 'Home_Screen/home_screen.dart';

class DecitionScreen extends StatefulWidget {
  const DecitionScreen({super.key});
  static String routName = '/decitionscreen';

  @override
  State<DecitionScreen> createState() => _DecitionScreenState();
}

class _DecitionScreenState extends State<DecitionScreen> {
  int currentIndex = 0;
  List<Widget> pages = [

    //! home screen============= 
    const HomeScreen(),
    //! ========================
    Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.green,
    ),//! ====================== 
    Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
      ),
    ),//! profile screen ======= 
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNav(),
      body: pages[currentIndex],
    );
  }

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.red,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      elevation: 5,
      enableFeedback: true,
      onTap: (index) => setState(
        () {
          currentIndex = index;
        },
      ),
      items: [
        bottomNavItem('assets/icons/Shop Icon.svg', 'Home',
            currentIndex == 0 ? Colors.red : Colors.grey),
        bottomNavItem('assets/icons/Heart Icon.svg', 'Favourite',
            currentIndex == 1 ? Colors.red : Colors.grey),
        bottomNavItem('assets/icons/Chat bubble Icon.svg', 'Chat',
            currentIndex == 2 ? Colors.red : Colors.grey),
        bottomNavItem('assets/icons/User.svg', 'Profile',
            currentIndex == 3 ? Colors.red : Colors.grey),
      ],
    );
  }

  BottomNavigationBarItem bottomNavItem(img, label, color) {
    return BottomNavigationBarItem(
        icon: SvgPicture.asset(
          img,
          color: color,
        ),
        label: label);
  }
}
