import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/consts/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashText extends StatelessWidget {
  const SplashText({
    super.key,
    required this.urlPolicy,
  });

  final Uri urlPolicy;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          style: Styles.textBlack15,
          text: LocaleKeys.splashText.tr(),
          children: [
            TextSpan(
                text: LocaleKeys.privacyPolicy.tr(),
                style: Styles.textBlack15Underline,
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    if (await canLaunchUrl(urlPolicy)) {
                      launchUrl(urlPolicy,
                          mode: LaunchMode.externalNonBrowserApplication);
                    }
                  }),
          ],
        ),
      ),
    );
  }
}
