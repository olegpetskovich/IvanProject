import 'package:flutter/material.dart';
import 'package:ivan_project/presentation/consts/colors.dart';

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
            side: BorderSide(width: 2, color: AppColors.colorMain!),
            shape: const StadiumBorder(),
            backgroundColor: AppColors.colorLight,
          ),
          onPressed: () => onPressed(),
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                buttonText.toUpperCase(),
                style: Styles.textColorMain22,
              )),
        ),
      ),
    );
  }
}
