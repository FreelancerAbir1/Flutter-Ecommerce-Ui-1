import 'package:flutter/material.dart';

import 'tokota_desc.dart';
import 'tokota_text.dart';

class OnBoardingView extends StatelessWidget {
  final String text;
  final String img;
  const OnBoardingView({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        const TokotaText(text: 'Future Shop'),
        TokotaDesc(text: text),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Image.asset(
            img,
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
