class CodeConfirmState {
  final bool isSuccess;
  final bool isLogin;
  final String? errorLabel;

  CodeConfirmState({
    required this.isSuccess,
    required this.isLogin,
    required this.errorLabel,
  });

  factory CodeConfirmState.initial() => CodeConfirmState(
        isSuccess: false,
        isLogin: false,
        errorLabel: null,
      );

  CodeConfirmState copyWith({
    bool? isSuccess,
    bool? isLogin,
    String? errorLabel,
  }) {
    return CodeConfirmState(
      isSuccess: isSuccess ?? this.isSuccess,
      isLogin: isLogin ?? this.isLogin,
      errorLabel: errorLabel,
    );
  }
}
