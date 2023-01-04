import 'package:flutter/material.dart';
import 'package:flutter1/Screen/Cart/cart_screen.dart';
import 'component/main_body.dart';
import 'component/action_btn.dart';
import 'component/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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
