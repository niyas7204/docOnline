import 'package:doc_online/core/constants.dart';
import 'package:doc_online/core/logo.dart';
import 'package:doc_online/presentation/login/screens/log_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

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
                header1('Verify Email'),
                const Text('Enter the otp sent to \n abcd@gmail.com'),
                textField('OTP'),
                space1(),
                cButton('Confirm', const Login(), context)
              ],
            ),
          )
        ],
      )),
    );
  }
}
