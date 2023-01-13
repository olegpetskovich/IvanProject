import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/consts/icons.dart';
import 'package:ivan_project/presentation/screens/codeConfirmScreen/bloc/code_confirm_bloc.dart';
import 'package:ivan_project/presentation/screens/codeConfirmScreen/bloc/code_confirm_event.dart';
import 'package:ivan_project/presentation/screens/codeConfirmScreen/bloc/code_confirm_state.dart';
import 'package:ivan_project/presentation/widgets/app_bar.dart';
import 'package:ivan_project/presentation/widgets/default_button.dart';
import 'package:ivan_project/presentation/widgets/default_text_field.dart';
import 'package:ivan_project/utils/Utils.dart';

class CodeConfirmScreen extends StatefulWidget {
  const CodeConfirmScreen({Key? key}) : super(key: key);

  @override
  State<CodeConfirmScreen> createState() => _CodeConfirmScreenState();
}

class _CodeConfirmScreenState extends State<CodeConfirmScreen> {
  late final CodeConfirmBloc _bloc;
  late final TextEditingController _inputConfirmCodeController;

  @override
  void initState() {
    super.initState();
    _bloc = CodeConfirmBloc();
    _inputConfirmCodeController = TextEditingController();
  }

  @override
  void dispose() {
    _inputConfirmCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleTextAppBar(LocaleKeys.confirm.tr()),
      body: SafeArea(
        child: Center(
          child: BlocConsumer<CodeConfirmBloc, CodeConfirmState>(
            bloc: _bloc,
            listener: (context, state) {
              if (state.isSuccess) {
                // Utils.navigate(context, const CodeConfirmScreen(), false);
              }
            },
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: Svg(icLogo),
                  ),
                  DefaultTextField(
                    hint: LocaleKeys.hintEnterCode.tr(),
                    controller: _inputConfirmCodeController,
                    // errorLabel: state.isSuccess ? null : state.errorLabel,
                    errorLabel: state.errorLabel,
                    textInputType: TextInputType.number,
                  ),
                  DefaultButton(
                    buttonText: LocaleKeys.confirm.tr(),
                    onPressed: () => _bloc.add(CodeConfirmSendCodeEvent(
                        code: _inputConfirmCodeController.text)),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
