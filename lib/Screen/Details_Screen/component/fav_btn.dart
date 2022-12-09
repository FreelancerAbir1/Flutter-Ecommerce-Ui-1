import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Model/product.dart';

class FavButton extends StatelessWidget {
  final Product product;
  final String img;
  const FavButton({
    Key? key,
    required this.img,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 40,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.red[100],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            img,
            color: product.isFav ? Colors.grey : Colors.red,
          ),
        ),
      ),
    );
  }
}
