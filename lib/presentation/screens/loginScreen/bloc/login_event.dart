part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoginSendCodeEvent extends LoginEvent {
  String numberOrEmail;
  LoginSendCodeEvent({required this.numberOrEmail});
}
