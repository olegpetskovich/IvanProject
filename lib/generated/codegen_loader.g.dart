// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> uk = {
  "startIvanProject": "Старт Ваніного Проекта",
  "loginTitle": "Авторизуватися",
  "hintEnterPhoneNumber": "Номер телефону/Електронна пошта",
  "getCode": "Отримати код",
  "fieldCantBeEmpty": "Поле не може бути пустим",
  "youWroteIncorrectData": "Ви вписали невірні дані",
  "hintEnterCode": "Введіть код",
  "wrongCode": "Неправильний код",
  "codeMustBe6": "Код має складатися із 6 цифр",
  "confirm": "Підтвердження"
};
static const Map<String,dynamic> en = {
  "startIvanProject": "Start Ivan Project",
  "loginTitle": "Log in/Register",
  "hintEnterPhoneNumber": "Phone/E-mail",
  "getCode": "Get code",
  "fieldCantBeEmpty": "Field can't be empty",
  "youWroteIncorrectData": "You're wrote incorrect data",
  "hintEnterCode": "Enter code",
  "wrongCode": "Wrong code",
  "codeMustBe6": "Code must be 6 digits",
  "confirm": "Confirm"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"uk": uk, "en": en};
}
