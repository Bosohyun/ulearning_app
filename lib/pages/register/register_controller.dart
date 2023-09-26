import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ulearning_app/common/widgets/flutter_toast.dart';
import 'package:ulearning_app/pages/register/bloc/register_bloc.dart';

class RegisterController {
  final BuildContext context;
  const RegisterController({
    required this.context,
  });

  Future<void> handleEmailRegister() async {
    final state = context.read<RegisterBloc>().state;
    String userName = state.userName;
    String email = state.email;
    String passsword = state.password;
    String rePassword = state.rePassword;

    if (userName.isEmpty) {
      toastInfo(msg: "User name can not be empty");
      return;
    }

    if (email.isEmpty) {
      toastInfo(msg: "Email can not be empty");
      return;
    }

    if (passsword.isEmpty) {
      toastInfo(msg: "Password can not be empty");
      return;
    }

    if (rePassword.isEmpty) {
      toastInfo(msg: "Your password confirmation is wrong");
      return;
    }

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: passsword,
      );

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(userName);
        String photoUrl = "uploads/default.png";
        await credential.user?.updatePhotoURL(photoUrl);
        toastInfo(
            msg:
                "An email has been sent to your registered email. To activate it please check your email vox");
        Navigator.of(context).pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo(msg: "Your password is too weak");
      } else if (e.code == 'email-already-in-use') {
        toastInfo(msg: "The email is already in use");
      } else if (e.code == 'invalid-email') {
        toastInfo(msg: "The email is invalid");
      }
    }
  }
}
