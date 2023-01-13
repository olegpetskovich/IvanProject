import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField({
    super.key,
    required this.errorLabel,
    required this.hint,
    required this.controller,
    this.textInputType = TextInputType.text
  });

  final String? errorLabel;
  final String hint;
  final TextEditingController controller;
  TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: hint,
          errorText: errorLabel,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
