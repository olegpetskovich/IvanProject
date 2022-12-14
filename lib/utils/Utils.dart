import 'package:email_validator/email_validator.dart';

class Utils {
  static bool isEmailValid(String text) => EmailValidator.validate(text);
  static bool isPhoneValid(String text) =>
      RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(text);
}
