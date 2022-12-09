import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});
  static String routeName = '/forgotscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: const Body(),
    );
  }
}
