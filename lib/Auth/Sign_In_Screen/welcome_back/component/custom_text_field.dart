
import 'package:flutter/material.dart'; 
import '../../../../constant.dart'; 
class CustomTextField extends StatelessWidget {
  final ValueChanged press;
  final TextEditingController kController;
  final TextInputType keyboardType;
  final IconData icon;
  final String hint;
  final String label; 
  const CustomTextField(
      {super.key,
      required this.press,
      required this.keyboardType,
      required this.icon,
      required this.hint,
      required this.label, required this.kController}); 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  },
      controller: kController,
      onChanged: press,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        floatingLabelStyle: const TextStyle(color: Colors.blue),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        suffixIcon: Icon(
          icon,
          color: kTextColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hint,
        border: oulineInpuBorder(),
        focusedBorder: oulineInpuBorder(),
        enabledBorder: oulineInpuBorder(),
        labelText: label,
      ),
    );
  }

  OutlineInputBorder oulineInpuBorder() {
    return OutlineInputBorder(
      gapPadding: 10.0,
      borderRadius: BorderRadius.circular(25),
    );
  }
}
