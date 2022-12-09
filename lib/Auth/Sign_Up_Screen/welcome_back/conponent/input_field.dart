import 'package:flutter/material.dart';

import '../../../../Model/input_text_field_class.dart';

class InputField extends StatelessWidget {
  final String hintEmail, labelEmail, hintPass, labePass;
  const InputField(
      {super.key,
      required this.hintEmail,
      required this.labelEmail,
      required this.hintPass,
      required this.labePass});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          InputTextFields().inputTextField(
              (value) {},
              TextInputType.emailAddress,
              Icons.mail,
              hintEmail,
              labelEmail,
              20),
          const SizedBox(
            height: 20,
          ),
          InputTextFields().inputTextField(
              (value) {},
              TextInputType.emailAddress,
              Icons.lock_clock_outlined,
              hintPass,
              labePass,
              20),
        ],
      ),
    );
  }
}
