import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ivan_project/presentation/consts/screens.dart';
import 'package:ivan_project/presentation/screens/codeConfirmScreen/code_confirm_screen.dart';
import 'package:ivan_project/presentation/screens/loginScreen/login_screen.dart';
import 'package:ivan_project/presentation/screens/profileInfoScreen/profile_info_screen.dart';

class IvanApp extends StatelessWidget {
  const IvanApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      initialRoute: loginScreen,
      routes: {
        loginScreen: (context) => const LoginScreen(),
        codeConfirmScreen: (context) => const CodeConfirmScreen(),
        profileInfoScreen: (context) => const ProfileInfoScreen(),
      },
    );
  }
}
