import 'package:doc_online/signin/application/bloc/login_bloc.dart';
import 'package:doc_online/signin/core/constants.dart';
import 'package:doc_online/signin/core/logo.dart';
import 'package:doc_online/signin/presentation/login/screens/sign_in.dart';
import 'package:doc_online/signin/presentation/login/screens/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                        BlocProvider.of<LoginBloc>(context)
                            .add(const LoginEvent.authLogIn());
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
