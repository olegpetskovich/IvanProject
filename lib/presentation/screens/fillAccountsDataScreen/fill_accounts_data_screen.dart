import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/consts/colors.dart';
import 'package:ivan_project/presentation/consts/styles.dart';
import 'package:ivan_project/presentation/screens/fillAccountsDataScreen/widgets/acc_data_panel.dart';
import 'package:ivan_project/presentation/screens/homeScreen/home_screen.dart';
import 'package:ivan_project/presentation/widgets/app_bar.dart';
import 'package:ivan_project/presentation/widgets/default_button.dart';
import 'package:ivan_project/utils/utils.dart';

class FillAccountsDataScreen extends StatelessWidget {
  const FillAccountsDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TitleTextAppBar(LocaleKeys.accountsInfoTitle.tr()),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                LocaleKeys.accountsInfoText.tr(),
                style: Styles.textColorMain15,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 100),
              child: Divider(
                thickness: 1,
                color: AppColors.colorMainLight,
              ),
            ),
            AccDataPanel(
              text: LocaleKeys.business.tr(),
            ),
            AccDataPanel(
              text: LocaleKeys.entertainment.tr(),
            ),
            DefaultButton(
              buttonText: LocaleKeys.confirm.tr(),
              onPressed: () {
                Utils.navigate(
                    context: context,
                    screenWidget: const HomeScreen(),
                    isClearStack: true);
              },
              // onPressed: () => _bloc.add(CodeConfirmSendCodeEvent(
              //     code: _inputConfirmCodeController.text)),
            ),
          ],
        ),
      ),
    );
  }
}
