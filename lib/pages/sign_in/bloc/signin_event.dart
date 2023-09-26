part of 'signin_bloc.dart';

sealed class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class EmailEvent extends SignInEvent {
  final String email;
  const EmailEvent(this.email);
}

class PasswordEvent extends SignInEvent {
  final String password;
  const PasswordEvent(this.password);
}
