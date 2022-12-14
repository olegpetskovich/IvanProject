import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({
    super.key,
    required this.errorLabel,
    required this.hint,
    required this.controller,
  });

  final String? errorLabel;
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: hint,
          errorText: errorLabel,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
