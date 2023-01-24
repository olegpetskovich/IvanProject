import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/screens/loginScreen/bloc/login_bloc.dart';
import 'package:ivan_project/presentation/widgets/default_button.dart';
import 'package:ivan_project/presentation/widgets/policy_text.dart';

class ButtonWithPolicy extends StatelessWidget {
  const ButtonWithPolicy({
    super.key,
    required LoginBloc bloc,
    required TextEditingController inputNumberEmailController,
  })  : _bloc = bloc,
        _inputNumberEmailController = inputNumberEmailController;

  final LoginBloc _bloc;
  final TextEditingController _inputNumberEmailController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButton(
          buttonText: LocaleKeys.getCode.tr(),
          onPressed: () => _bloc.add(LoginGetCodeEvent(
              numberOrEmail: _inputNumberEmailController.text)),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: PolicyText(urlPolicy: Uri.parse(LocaleKeys.urlPolicy.tr())),
        ),
      ],
    );
  }
}
