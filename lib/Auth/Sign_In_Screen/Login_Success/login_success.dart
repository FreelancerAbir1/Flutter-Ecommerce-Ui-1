import 'package:flutter/material.dart';

import 'component/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});
  static String routeName = '/loginsuccess';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login Success'),
      ),
      body: const Body(),
    );
  }
}
