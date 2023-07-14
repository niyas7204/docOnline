import 'package:doc_online/doctorside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:flutter/material.dart';

import 'log_in.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController restcontroller = TextEditingController();
    TextEditingController confirmcontroller = TextEditingController();
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
                space1h(),
                textField('New Password', restcontroller),
                space1h(),
                textField('Confirm Password', confirmcontroller),
                space1h(),
                cButton('Continue', const Login(), context)
              ],
            ),
          )
        ],
      )),
    );
  }
}
