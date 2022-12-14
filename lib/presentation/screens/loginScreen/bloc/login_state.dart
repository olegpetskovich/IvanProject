part of 'login_bloc.dart';

class LoginState {
  final bool isSuccess;
  final String? errorLabel;

  LoginState({
    required this.isSuccess,
    required this.errorLabel,
  });

  factory LoginState.initial() => LoginState(
        isSuccess: false,
        errorLabel: null,
      );

  LoginState copyWith({
    bool? isSuccess,
    String? errorLabel,
  }) {
    return LoginState(
      isSuccess: isSuccess ?? this.isSuccess,
      errorLabel: errorLabel ?? this.errorLabel,
    );
  }
}
