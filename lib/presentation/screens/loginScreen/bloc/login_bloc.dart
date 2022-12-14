import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/utils/Utils.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginSendCodeEvent>(_onSendCode);
  }

  Future<void> _onSendCode(LoginSendCodeEvent event, Emitter emitter) async {
    event.numberOrEmail;
    if (event.numberOrEmail.isEmpty) {
      emitter(state.copyWith(errorLabel: LocaleKeys.fieldCantBeEmpty.tr()));
      return;
    }

    if (!Utils.isEmailValid(event.numberOrEmail) ||
        !Utils.isPhoneValid(event.numberOrEmail)) {
      emitter(
          state.copyWith(errorLabel: LocaleKeys.youWroteIncorrectData.tr()));
      return;
    }

    emitter(state.copyWith(errorLabel: null));
  }
}
