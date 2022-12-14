import 'package:flutter/material.dart';
import 'package:flutter1/Screen/Cart/component/cart_product_card.dart';

import '../../../Model/product.dart';
import 'first_stor.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FirstStor(storeText: 'Abir Store'),
            const SizedBox(
              height: 20,
            ),
            ...List.generate(
              product.length,
              (index) => CartProductCard(
                product: product[index],
                index: index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
