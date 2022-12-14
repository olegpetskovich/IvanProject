import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'package:easy_localization/easy_localization.dart';

import 'generated/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('uk')],
          path: 'assets/translations',
          fallbackLocale: const Locale('en'),
          assetLoader: const CodegenLoader(),
          child: const IvanApp()),
    );
  });
}
