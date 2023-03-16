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
  "appName": "Ivan Project",
  "startIvanProject": "Старт Ваніного Проекта",
  "loginTitle": "Авторизуватися",
  "hintEnterPhoneNumber": "Номер телефону/Електронна пошта",
  "getCode": "Отримати код",
  "fieldCantBeEmpty": "Поле не може бути пустим",
  "youWroteIncorrectData": "Ви вписали невірні дані",
  "hintEnterCode": "Введіть код",
  "wrongCode": "Неправильний код",
  "codeMustBe6": "Код має складатися із 6 цифр",
  "confirm": "Підтвердження",
  "urlPolicy": "https://uk.wikipedia.org/wiki/",
  "splashText": "Натискаючи кнопку, ви підтверджуєте, що вами була прочитана та прийнята ",
  "privacyPolicy": "Політика конфіденційності",
  "start": "СТАРТ",
  "enterCodeEmailOrPhone": "Будь ласка, введіть свій контактний номер телефону або електронну адресу для отримання коду доступу",
  "enterCodeEmail": "Будь ласка, введіть свою контактну електронну адресу, щоб отримати код доступу",
  "slogan": "Just business",
  "checkYourMailOrSms": "Перевірте свою пошту або смс, куди вам повинен прийти код підтвердження для входу в обліковий запис",
  "accountsInfoTitle": "Реєстрація аккаунтів",
  "accountsInfoText": "Наш додаток надає можливість створити два внутрішні облікові записи для розділення тематики вашої діяльності",
  "business": "Бізнес",
  "entertainment": "Розваги",
  "name": "Ім'я",
  "userName": "Унікальне ім'я"
};
static const Map<String,dynamic> en = {
  "appName": "Ivan Project",
  "startIvanProject": "Start Ivan Project",
  "loginTitle": "Log in/Register",
  "hintEnterPhoneNumber": "Phone/E-mail",
  "getCode": "Get Code",
  "fieldCantBeEmpty": "Field can't be empty",
  "youWroteIncorrectData": "You're wrote incorrect data",
  "hintEnterCode": "Enter code",
  "wrongCode": "Wrong code",
  "codeMustBe6": "Code must be 6 digits",
  "confirm": "Confirm",
  "urlPolicy": "https://uk.wikipedia.org/wiki/",
  "splashText": "By clicking button, you confirm that you have read and acknowledged ",
  "privacyPolicy": "Privacy Policy",
  "start": "START",
  "enterCodeEmailOrPhone": "Please, enter your contact telephone or email to receive the access code",
  "enterCodeEmail": "Please, enter your contact email to receive the access code",
  "slogan": "Just business",
  "checkYourMailOrSms": "Check your mail or sms, where you should receive a confirmation code to enter your account",
  "accountsInfoTitle": "Register your accounts",
  "accountsInfoText": "Our application provides the opportunity to have two internal accounts to separate the topics of your activities",
  "business": "Business",
  "entertainment": "Entertainment",
  "name": "Name",
  "userName": "User name"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"uk": uk, "en": en};
}
