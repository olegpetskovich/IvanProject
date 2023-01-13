abstract class CodeConfirmEvent {}

class CodeConfirmSendCodeEvent extends CodeConfirmEvent {
  String code;
  CodeConfirmSendCodeEvent({required this.code});
}
