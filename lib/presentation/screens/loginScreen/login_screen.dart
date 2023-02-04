import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/screens/codeConfirmScreen/code_confirm_screen.dart';
import 'package:ivan_project/presentation/screens/loginScreen/bloc/login_bloc.dart';
import 'package:ivan_project/presentation/screens/loginScreen/widgets/button_with_policy.dart';
import 'package:ivan_project/presentation/widgets/logo_slogan.dart';
import 'package:ivan_project/presentation/screens/loginScreen/widgets/text_field_info.dart';
import 'package:ivan_project/presentation/widgets/app_bar.dart';
import 'package:ivan_project/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final LoginBloc _bloc;
  late final TextEditingController _inputNumberEmailController;

  @override
  void initState() {
    super.initState();
    _bloc = LoginBloc();

    _inputNumberEmailController = TextEditingController();
  }

  @override
  void dispose() {
    _inputNumberEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleTextAppBar(LocaleKeys.loginTitle.tr()),
      body: SafeArea(
        child: Center(
          child: BlocConsumer<LoginBloc, LoginState>(
            bloc: _bloc,
            listener: (context, state) {
              if (state.isSuccess) {
                Utils.navigate(
                    context: context,
                    screenWidget: const CodeConfirmScreen(),
                    isClearStack: false);
              }
            },
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const LogoSlogan(),
                  TextFieldWithInfo(
                    state: state,
                    inputNumberEmailController: _inputNumberEmailController,
                  ),
                  ButtonWithPolicy(
                    bloc: _bloc,
                    inputNumberEmailController: _inputNumberEmailController,
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
