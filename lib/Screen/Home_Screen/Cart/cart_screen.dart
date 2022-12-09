import 'package:flutter/material.dart';
import 'package:flutter1/Model/product.dart';

import 'package:flutter1/constant.dart';

import 'component/body.dart';
import 'component/check_out.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static String routeName = '/cartscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: const CheckOut(
        imgBack: 'assets/icons/arrow_right.svg',
        imgNote: 'assets/icons/receipt.svg',
      ),
      appBar: appBar(),
      body: const Body(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.grey[200],
      title: Column(
        children: [
          const Text('Your Cart'),
          Text(
            '${product.length} Items',
            style: TextStyle(
              fontWeight: kDefaultFontNormal.fontWeight,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
