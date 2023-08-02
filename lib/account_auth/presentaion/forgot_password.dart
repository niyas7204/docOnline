import 'package:doc_online/account_auth/presentaion/verify_email.dart';
import 'package:doc_online/core/get_all_data.dart';
import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

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
                labelText('Email'),
                textField('Email', emailcontroller),
                space1h(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: baseColor,
                    ),
                    onPressed: () {
                      GetAllData.email = emailcontroller.text;
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            const VerifyEmail(isSignup: false),
                      ));
                    },
                    child: labelText('Next'))
              ],
            ),
          )
        ],
      )),
    );
  }
}
