part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoginGetCodeEvent extends LoginEvent {
  String numberOrEmail;
  LoginGetCodeEvent({required this.numberOrEmail});
}
