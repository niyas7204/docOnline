import 'package:doc_online/core/constants.dart';
import 'package:doc_online/core/logo.dart';
import 'package:doc_online/presentation/login/screens/log_in.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                header1('Reset Password'),
                space1(),
                textField('New Password'),
                space1(),
                textField('Confirm Password'),
                space1(),
                cButton('Continue', const Login(), context)
              ],
            ),
          )
        ],
      )),
    );
  }
}
