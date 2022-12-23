import 'package:flutter/material.dart';

import 'component/body.dart';

class RegisterAccountScreen extends StatelessWidget {
  const RegisterAccountScreen({super.key});
  static String routeName = '/registerscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const Body(),
    );
  }
}
