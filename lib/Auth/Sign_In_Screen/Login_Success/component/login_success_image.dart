import 'package:flutter/material.dart';

class LoginSuccessImg extends StatelessWidget {
  final String img;
  const LoginSuccessImg({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Image.asset(img),
    );
  }
}
