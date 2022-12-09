import 'package:flutter/material.dart';

import '../../../Model/product.dart';
import '../../../constant.dart';

class BuildRating extends StatelessWidget {
  final Product products;
  const BuildRating({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 80,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            products.rating.toString(),
            style: const TextStyle(
              color: kTextColor,
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
