import 'package:doc_online/signin/core/constants.dart';
import 'package:doc_online/signin/core/logo.dart';
import 'package:doc_online/signin/presentation/login/screens/verify_email.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(top: 40, left: 16, child: logo()),
          Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    header1('Sign In'),
                    space1(),
                    textField('Email'),
                    space1(),
                    textField('Username'),
                    space1(),
                    textField('Password'),
                    space1(),
                    textField('confirmPassword'),
                    space1(),
                    cButton('Sign Up', const VerifyEmail(), context)
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
