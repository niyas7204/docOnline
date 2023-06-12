import 'package:doc_online/core/constants.dart';
import 'package:doc_online/core/logo.dart';
import 'package:doc_online/presentation/login/screens/log_in.dart';
import 'package:doc_online/presentation/login/screens/new_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(top: 40, left: 16, child: logo()),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                header1('Forgot Password'),
                const Text('Enter the Email adress'),
                textField('Email'),
                space1(),
                cButton('Next', const NewPassword(), context)
              ],
            ),
          )
        ],
      )),
    );
  }
}
