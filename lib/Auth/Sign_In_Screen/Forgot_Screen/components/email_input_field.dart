import 'package:flutter/material.dart';

import '../../../../Model/input_text_field_class.dart';

class EmailInputField extends StatelessWidget {
  final String hintText;
  final String labelText;
  const EmailInputField(
      {super.key, required this.hintText, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InputTextFields().inputTextField((value) {},
          TextInputType.emailAddress, Icons.mail, hintText, labelText, 20),
    );
  }
}
