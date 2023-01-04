import 'package:flutter/material.dart';

import 'component/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});
  static String routeName = '/completeprofile';

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body:   const Body(),
    );
  }
}
