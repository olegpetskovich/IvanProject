import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/utils/utils.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginGetCodeEvent>(_onGetCode);
  }

  Future<void> _onGetCode(LoginGetCodeEvent event, Emitter emitter) async {
    event.numberOrEmail;
    if (event.numberOrEmail.isEmpty) {
      emitter(state.copyWith(errorLabel: LocaleKeys.fieldCantBeEmpty.tr()));
      return;
    }

    // if (!Utils.isEmailValid(event.numberOrEmail) ||
    //     !Utils.isPhoneValid(event.numberOrEmail)) {
    //   emitter(
    //       state.copyWith(errorLabel: LocaleKeys.youWroteIncorrectData.tr()));
    //   return;
    // }

    emitter(state.copyWith(isSuccess: true, errorLabel: null));
  }
}
