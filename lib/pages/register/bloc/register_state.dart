part of 'register_bloc.dart';

class RegisterState extends Equatable {
  final String userName;
  final String email;
  final String password;
  final String rePassword;

  const RegisterState({
    required this.userName,
    required this.email,
    required this.password,
    required this.rePassword,
  });

  factory RegisterState.initial() => const RegisterState(
        userName: "",
        email: "",
        password: "",
        rePassword: "",
      );

  @override
  List<Object> get props => [userName, email, password, rePassword];

  @override
  String toString() =>
      'RegisterState(userName: $userName, email: $email, password: $password, rePasword: $rePassword)';

  RegisterState copyWith({
    //optional named parameter
    String? userName,
    String? email,
    String? password,
    String? rePassword,
  }) {
    return RegisterState(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      password: password ?? this.password,
      rePassword: rePassword ?? this.rePassword,
    );
  }
}
