import 'package:flutter/material.dart';

import 'component/body.dart';

class RegisterAccountScreen extends StatelessWidget {
  const RegisterAccountScreen({super.key});
  static String routeName = '/registerscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body:     Body( ),
    );
  }
}
