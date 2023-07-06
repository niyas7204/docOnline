import 'package:doc_online/ui/core/widgets.dart';
import 'package:doc_online/ui/core/logo.dart';

import 'package:doc_online/account_auth/signin/presentation/login/screens/new_password.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
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
                textField('Email', emailcontroller),
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
