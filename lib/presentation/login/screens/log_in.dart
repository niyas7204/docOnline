import 'package:doc_online/core/constants.dart';
import 'package:doc_online/core/logo.dart';
import 'package:doc_online/infrastructure/login/login.dart';
import 'package:doc_online/presentation/login/screens/forgot_password.dart';
import 'package:doc_online/presentation/login/screens/sign_in.dart';
import 'package:doc_online/presentation/login/screens/verify_email.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 40.0,
              left: 16.0,
              child: logo(),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  header1('Login'),
                  space1(),
                  textField('Username'),
                  space1(),
                  textField('Password'),
                  space1(),
                  TextButton(
                      onPressed: () async {
                        await userLog();
                      },
                      child: const Text(
                        "Forgot password",
                        style: TextStyle(color: Colors.blue),
                      )),
                  cButton('Login', const VerifyEmail(), context),
                  space1(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ));
                          },
                          child: const Text(
                            'Create New',
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
