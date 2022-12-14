import 'package:flutter/material.dart';

import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: currentWidth <= 500 ? 0 : 30),
      child: Row(
        mainAxisAlignment: currentWidth <= 500
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CategoryCard(
            img: 'assets/icons/Flash Icon.svg',
            txt: 'Flash\n Deal',
            press: () {},
          ),
          CategoryCard(
            img: 'assets/icons/Bill Icon.svg',
            txt: 'Bill\n',
            press: () {},
          ),
          CategoryCard(
            img: 'assets/icons/Gift Icon.svg',
            txt: 'Daily\n Gift',
            press: () {},
          ),
          CategoryCard(
            img: 'assets/icons/Game Icon.svg',
            txt: 'Game\n',
            press: () {},
          ),
          CategoryCard(
            img: 'assets/icons/Discover.svg',
            txt: 'More\n',
            press: () {},
          ),
        ],
      ),
    );
  }
}
