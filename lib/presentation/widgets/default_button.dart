import 'package:flutter/material.dart';

import '../consts/styles.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key, required this.buttonText, required this.onPressed});

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width: double.maxFinite,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(width: 2, color: Colors.black),
            shape: const StadiumBorder(),
            backgroundColor: Colors.white,
          ),
          onPressed: () => onPressed(),
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                buttonText.toUpperCase(),
                style: Styles.textBlack22,
              )),
        ),
      ),
    );
  }
}
