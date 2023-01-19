import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/consts/icons.dart';
import 'package:ivan_project/presentation/screens/loginScreen/login_screen.dart';
import 'package:ivan_project/presentation/screens/splashScreen/widgets/splash_text.dart';
import 'package:ivan_project/presentation/widgets/app_bar.dart';
import 'package:ivan_project/presentation/widgets/default_button.dart';
import 'package:ivan_project/utils/shared_preference.dart';
import 'package:ivan_project/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  get urlPolicy => Uri.parse(LocaleKeys.urlPolicy.tr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleTextAppBar(LocaleKeys.appName.tr()),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: Svg(icLogo),
              ),
              SplashText(urlPolicy: urlPolicy),
              DefaultButton(
                  buttonText: LocaleKeys.start.tr(),
                  onPressed: () {
                    SharedPref.acceptPolicy();
                    Utils.navigate(context, const LoginScreen(), false);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
