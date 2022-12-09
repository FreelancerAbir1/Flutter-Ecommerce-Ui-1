import 'package:flutter/material.dart';
import 'package:flutter1/constant.dart';

class DotGenerate extends StatelessWidget {
  final int currentIndex;
  final int index;
  const DotGenerate({
    Key? key,
    required this.currentIndex,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 8,
        width: currentIndex == index ? 20 : 8,
        decoration: BoxDecoration(
          color: currentIndex == index ? Colors.red : kTextColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
