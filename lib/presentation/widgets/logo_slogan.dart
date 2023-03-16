import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/consts/icons.dart';
import 'package:ivan_project/presentation/consts/styles.dart';

class LogoSlogan extends StatelessWidget {
  const LogoSlogan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 70,
          backgroundImage: Svg(icLogo),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            LocaleKeys.slogan.tr().toUpperCase(),
            textAlign: TextAlign.center,
            style: Styles.textColorMainBold30,
          ),
        )
      ],
    );
  }
}
