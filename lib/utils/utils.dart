import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';

class Utils {
  static bool isEmailValid(String text) => EmailValidator.validate(text);

  static bool isPhoneValid(String text) =>
      RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(text);

  static void navigate(context, screenWidget, isClearStack) {
    if (isClearStack) {
      Navigator.of(context).pushAndRemoveUntil(
          CupertinoPageRoute(builder: (context) => screenWidget),
          (Route<dynamic> route) => false);
    } else {
      Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => screenWidget),
      );
    }
  }
}
