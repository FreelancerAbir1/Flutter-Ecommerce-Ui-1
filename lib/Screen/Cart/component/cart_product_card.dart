import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Model/product.dart';
import '../../../constant.dart';

class CartProductCard extends StatefulWidget {
  final Product product;
  final int index;
  const CartProductCard({
    Key? key,
    required this.product,
    required this.index,
  }) : super(key: key);

  @override
  State<CartProductCard> createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {},
      background: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          width: 50,
          child: SvgPicture.asset(
            'assets/icons/Trash.svg',
            height: 30,
            width: 30,
            alignment: Alignment.centerRight,
          ),
        ),
      ),
      key: Key(
        widget.index.toString(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        widget.product.productImg,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.product.producttitle}\n',
                      style: TextStyle(
                          color: kTextColor,
                          fontWeight: kDefaultFontBold.fontWeight,
                          fontSize: 15),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${widget.product.price.toString()}',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: kDefaultFontBold.fontWeight,
                              fontSize: 15),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'x3',
                          style: TextStyle(
                              color: kTextColor,
                              fontWeight: kDefaultFontBold.fontWeight,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
