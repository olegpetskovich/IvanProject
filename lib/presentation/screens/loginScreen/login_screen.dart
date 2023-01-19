import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/consts/icons.dart';
import 'package:ivan_project/presentation/screens/codeConfirmScreen/code_confirm_screen.dart';
import 'package:ivan_project/presentation/screens/loginScreen/bloc/login_bloc.dart';
import 'package:ivan_project/presentation/widgets/default_button.dart';
import 'package:ivan_project/presentation/widgets/app_bar.dart';
import 'package:ivan_project/presentation/widgets/default_text_field.dart';
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
    print("dispose LoginScreen");
    _inputNumberEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build LoginScreen");

    return Scaffold(
      appBar: TitleTextAppBar(LocaleKeys.loginTitle.tr()),
      body: SafeArea(
        child: Center(
          child: BlocConsumer<LoginBloc, LoginState>(
            bloc: _bloc,
            listener: (context, state) {
              if (state.isSuccess) {
                Utils.navigate(context, const CodeConfirmScreen(), false);
                // Navigator.of(context).push(_createRoute());
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
                    hint: LocaleKeys.hintEnterPhoneNumber.tr(),
                    controller: _inputNumberEmailController,
                    errorLabel: state.errorLabel,
                  ),
                  DefaultButton(
                    buttonText: LocaleKeys.getCode.tr(),
                    onPressed: () => _bloc.add(LoginGetCodeEvent(
                        numberOrEmail: _inputNumberEmailController.text)),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => CodeConfirmScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
