import 'package:flutter/material.dart';

import '../../../../Model/product.dart';

class PopularProductCard extends StatelessWidget {
  final Product product;
  final GestureTapCallback press;
  const PopularProductCard({
    Key? key,
    required this.press,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: Container(
          height: 120,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 01, color: Colors.black12),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: Offset(2, 5),
                  blurStyle: BlurStyle.outer),
            ],
            image: DecorationImage(
              image: AssetImage(product.productImg),
            ),
          ),
        ),
      ),
    );
  }
}
