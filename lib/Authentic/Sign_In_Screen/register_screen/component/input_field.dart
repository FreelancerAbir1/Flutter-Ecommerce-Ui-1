import 'package:flutter/material.dart';

import '../../../../Model/input_text_field_class.dart';

class InputField extends StatelessWidget {
  final String hintEmail,
      labelEmail,
      hintPass,
      labelPass,
      reEnterHintPass,
      reEnterLabelPass;
  const InputField(
      {super.key,
      required this.hintEmail,
      required this.labelEmail,
      required this.hintPass,
      required this.labelPass,
      required this.reEnterHintPass,
      required this.reEnterLabelPass});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            InputTextFields().inputTextField(
              (value) {},
              TextInputType.emailAddress,
              Icons.mail,
              hintEmail,
              labelEmail,
              20,
            ),
            const SizedBox(
              height: 20,
            ),
            InputTextFields().inputTextField((value) {}, TextInputType.number,
                Icons.lock, hintPass, labelPass, 20),
            const SizedBox(
              height: 20,
            ),
            InputTextFields().inputTextField((value) {}, TextInputType.number,
                Icons.lock, reEnterHintPass, reEnterLabelPass, 20),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
