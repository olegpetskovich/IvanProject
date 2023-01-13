import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/screens/codeConfirmScreen/bloc/code_confirm_event.dart';
import 'package:ivan_project/presentation/screens/codeConfirmScreen/bloc/code_confirm_state.dart';

class CodeConfirmBloc extends Bloc<CodeConfirmEvent, CodeConfirmState> {
  final codeLength = 6;

  CodeConfirmBloc() : super(CodeConfirmState.initial()) {
    on<CodeConfirmSendCodeEvent>(_onSendCode);
  }

  Future<void> _onSendCode(
      CodeConfirmSendCodeEvent event, Emitter emitter) async {
    if (event.code.isEmpty) {
      emitter(state.copyWith(errorLabel: LocaleKeys.fieldCantBeEmpty.tr()));
    } else if (event.code.length != codeLength) {
      emitter(state.copyWith(errorLabel: LocaleKeys.codeMustBe6.tr()));
    } else {
      emitter(state.copyWith(isSuccess: true, errorLabel: null));
    }
  }
}
