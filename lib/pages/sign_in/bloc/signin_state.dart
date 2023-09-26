part of 'signin_bloc.dart';

class SignInState extends Equatable {
  final String email;
  final String password;

  const SignInState({
    required this.email,
    required this.password,
  });

  factory SignInState.initial() => const SignInState(email: "", password: "");

  @override
  List<Object> get props => [email, password];

  @override
  String toString() => 'SignInState(email: $email, password: $password)';

  SignInState copyWith({
    //optional named parameter
    String? email,
    String? password,
  }) {
    return SignInState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
