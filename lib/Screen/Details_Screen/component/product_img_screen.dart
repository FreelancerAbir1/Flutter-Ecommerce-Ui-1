import 'package:flutter/material.dart';

class ProductImagScreen extends StatelessWidget {
  final String img;
  const ProductImagScreen({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Image.asset(
          img,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
