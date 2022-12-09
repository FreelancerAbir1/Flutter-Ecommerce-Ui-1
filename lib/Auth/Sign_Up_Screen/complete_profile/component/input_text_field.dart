import 'package:flutter/material.dart';

import '../../../../Model/input_text_field_class.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.hintName,
    required this.labelName,
    required this.hintLast,
    required this.labelLast,
    required this.hintNb,
    required this.labelNb,
    required this.hintAdd,
    required this.labelAdd,
  }) : super(key: key);
  final String hintName,
      labelName,
      hintLast,
      labelLast,
      hintNb,
      labelNb,
      hintAdd,
      labelAdd;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputTextFields().inputTextField((value) {}, TextInputType.emailAddress,
            Icons.email, hintName, labelName, 20),
        const SizedBox(
          height: 20,
        ),
        InputTextFields().inputTextField((value) {}, TextInputType.emailAddress,
            Icons.recent_actors_outlined, hintLast, labelLast, 20),
        const SizedBox(
          height: 20,
        ),
        InputTextFields().inputTextField((value) {}, TextInputType.emailAddress,
            Icons.numbers, hintNb, labelNb, 20),
        const SizedBox(
          height: 20,
        ),
        InputTextFields().inputTextField((value) {}, TextInputType.emailAddress,
            Icons.home, hintAdd, labelAdd, 20),
      ],
    );
  }
}
