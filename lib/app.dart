import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ivan_project/presentation/consts/colors.dart';
import 'package:ivan_project/presentation/screens/homeScreen/home_screen.dart';
import 'package:ivan_project/presentation/screens/loginScreen/login_screen.dart';
import 'package:ivan_project/utils/shared_preference.dart';

class IvanApp extends StatefulWidget {
  const IvanApp({Key? key}) : super(key: key);

  @override
  State<IvanApp> createState() => _IvanAppState();
}

class _IvanAppState extends State<IvanApp> {
  late bool _isPrefLoaded;
  late bool _isLogged;

  @override
  void initState() {
    super.initState();
    _loadPrefValue();
  }

  Future<void> _loadPrefValue() async {
    _isPrefLoaded = false;
    final isLoggedIn = await SharedPref.isLoggedIn();
    setState(() {
      _isPrefLoaded = true;
      _isLogged = isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      home: !_isPrefLoaded
          ? const Center(child: CircularProgressIndicator())
          : _isLogged
              ? const HomeScreen()
              : const LoginScreen(),
    );
  }
}
