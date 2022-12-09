import 'package:flutter/material.dart';
import 'package:flutter1/Model/product.dart';

import 'component/body.dart';
import 'component/build_rating.dart';

class DetailsScreen extends StatelessWidget {
  final int index;
  const DetailsScreen({
    super.key,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        actions: [
          BuildRating(
            products: product[index],
          ),
        ],
      ),
      body: Body(
        product: product[index],
      ),
    );
  }
}
