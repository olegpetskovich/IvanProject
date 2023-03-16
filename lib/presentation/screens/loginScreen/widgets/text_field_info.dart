import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/consts/styles.dart';
import 'package:ivan_project/presentation/screens/loginScreen/bloc/login_bloc.dart';
import 'package:ivan_project/presentation/widgets/default_text_field.dart';

class TextFieldWithInfo extends StatelessWidget {
  const TextFieldWithInfo({
    super.key,
    required this.state,
    required this.inputNumberEmailController,
  });

  final LoginState state;
  final TextEditingController inputNumberEmailController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: DefaultTextField(
            hint: LocaleKeys.hintEnterPhoneNumber.tr(),
            controller: inputNumberEmailController,
            errorLabel: state.errorLabel,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            LocaleKeys.enterCodeEmailOrPhone.tr(),
            textAlign: TextAlign.center,
            style: Styles.textColorMainLight15,
          ),
        )
      ],
    );
  }
}
