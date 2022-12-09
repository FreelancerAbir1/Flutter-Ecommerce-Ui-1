import 'package:flutter/material.dart';
import 'package:flutter1/Screen/Home_Screen/Cart/cart_screen.dart';

import 'component/main_body.dart';
import 'component/appbar/action_btn.dart';
import 'component/appbar/search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customHomeAppbar(context),
      body: const MainBody(),
    );
  }

  //Appbar generated
  AppBar customHomeAppbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: const SearchBar(
          img: 'assets/icons/Search Icon.svg', hintText: 'Search Product'),
      actions: [
        ActionButton(
          cartIcon: 'assets/icons/Cart Icon.svg',
          cartPress: () {
            Navigator.pushNamed(context, CartScreen.routeName);
          },
          notiIcon: 'assets/icons/Bell.svg',
          notiPress: () {},
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
