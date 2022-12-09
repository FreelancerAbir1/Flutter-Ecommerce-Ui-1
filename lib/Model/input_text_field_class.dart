import 'package:flutter/material.dart';

import '../constant.dart';

class InputTextFields {
  TextFormField inputTextField(
      press, keyboardType, icon, hintText, labelText, hintMaxLine) {
    return TextFormField(
      onChanged: press,
      keyboardType: keyboardType,
      decoration: inputDecoration(icon, hintText, hintMaxLine, labelText),
    );
  }

  InputDecoration inputDecoration(icon, hintText, hintMaxLine, labelText) {
    return InputDecoration(
      floatingLabelStyle: const TextStyle(color: Colors.blue),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      suffixIcon: Icon(
        icon,
        color: kTextColor,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintText: hintText,
      hintMaxLines: hintMaxLine,
      border: oulineInpuBorder(),
      focusedBorder: oulineInpuBorder(),
      enabledBorder: oulineInpuBorder(),
      labelText: labelText,
    );
  }
}
