import 'package:flutter/material.dart';

class Product {
  final String productImg, producttitle, productDes, id;
  final List<String> productMiniImg;
  final List<Color> productColor;
  final double rating;
  final bool isFav;
  final double price;
  Product({
    required this.price,
    required this.id,
    required this.productImg,
    required this.producttitle,
    required this.productDes,
    required this.productMiniImg,
    required this.productColor,
    required this.isFav,
    required this.rating,
  });
}

List<Product> product = [
  Product(
    price: 20.0,
    id: ' 1',
    productImg: 'assets/images/ps4_console_white_1.png',
    producttitle: 'Wireless controller for ps4',
    productDes:
        'Its a game controller tools.Its working wirelessly.Its provide charging.so very creativity for this game controller.its mode is ps4',
    productMiniImg: [
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_3.png',
      'assets/images/ps4_console_white_4.png'
    ],
    productColor: [
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.red,
    ],
    isFav: false,
    rating: 2.5,
  ),
  Product(
    price: 35.0,
    id: '2',
    productImg: 'assets/images/ps4_console_blue_1.png',
    producttitle: 'Wireless controller for ps4',
    productDes:
        'Its a game controller tools.Its working wirelessly.Its provide charging.so very creativity for this game controller.its mode is ps4',
    productMiniImg: [
      'assets/images/ps4_console_blue_1.png',
      'assets/images/ps4_console_blue_2.png',
      'assets/images/ps4_console_blue_3.png',
      'assets/images/ps4_console_blue_4.png'
    ],
    productColor: [
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.red,
    ],
    isFav: true,
    rating: 1.2,
  ),
  Product(
    price: 20.0,
    id: ' 3',
    productImg: 'assets/images/ps4_console_white_1.png',
    producttitle: 'Wireless controller for ps4',
    productDes:
        'Its a game controller tools.Its working wirelessly.Its provide charging.so very creativity for this game controller.its mode is ps4',
    productMiniImg: [
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_3.png',
      'assets/images/ps4_console_white_4.png'
    ],
    productColor: [
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.red,
    ],
    isFav: false,
    rating: 2.5,
  ),
  Product(
    price: 35.0,
    id: '4',
    productImg: 'assets/images/ps4_console_blue_1.png',
    producttitle: 'Wireless controller for ps4',
    productDes:
        'Its a game controller tools.Its working wirelessly.Its provide charging.so very creativity for this game controller.its mode is ps4',
    productMiniImg: [
      'assets/images/ps4_console_blue_1.png',
      'assets/images/ps4_console_blue_2.png',
      'assets/images/ps4_console_blue_3.png',
      'assets/images/ps4_console_blue_4.png'
    ],
    productColor: [
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.red,
    ],
    isFav: true,
    rating: 1.2,
  ),
];
