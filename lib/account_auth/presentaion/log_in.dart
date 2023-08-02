import 'dart:developer';

import 'package:doc_online/account_auth/businesslogic/login/login_bloc.dart';

import 'package:doc_online/account_auth/presentaion/forgot_password.dart';

import 'package:doc_online/account_auth/presentaion/sign_up.dart';

import 'package:doc_online/core/responsehandler/status.dart';

import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:doc_online/doctorside/presentation/log_in/log_in.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../userside/presentation/screens/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (!state.loginData.data!.error!) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const HomeSc(),
            ));
          }
        },
        child: SafeArea(
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return Stack(
                children: [
                  state.loginData.status == ApiStatus.loading
                      ? Container(
                          color: const Color.fromARGB(209, 49, 49, 49),
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : const SizedBox(),
                  Positioned(
                    left: 16.0,
                    child: logo(),
                  ),
                  Positioned(
                    right: 16.0,
                    child: TextButton(
                        onPressed: () => Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const DoctorLogin(),
                            )),
                        child: const Text('Doctor Login')),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        header1('Login'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            space1h(),
                            labelText('Email'),
                            textField('Email', emailcontroller),
                            space1h(),
                            labelText('Password'),
                            textField('Password', passwordcontroller),
                          ],
                        ),
                        TextButton(
                            onPressed: () async {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ForgotPassword(),
                              ));
                            },
                            child: const Text(
                              "Forgot password",
                              style: TextStyle(color: Colors.blue),
                            )),
                        SizedBox(
                          width: 160.w,
                          height: 35.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: baseColor,
                            ),
                            onPressed: () async {
                              onPress(context, emailcontroller.text,
                                  passwordcontroller.text);
                            },
                            child: const Text(
                              'Login',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ),
                        ),
                        state.loginData.data != null
                            ? state.loginData.data!.error!
                                ? errorText(state.loginData.data!.message!)
                                : const SizedBox()
                            : const SizedBox(),
                        space1h(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account?"),
                            BlocBuilder<LoginBloc, LoginState>(
                              builder: (context, state) {
                                return TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => const SignUp(),
                                      ));
                                    },
                                    child: const Text(
                                      'Create New',
                                      style: TextStyle(color: Colors.blue),
                                    ));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

onPress(BuildContext context, String email, String password) async {
  log('on');

  if (email.isNotEmpty && password.isNotEmpty) {
    log('on press');
    BlocProvider.of<LoginBloc>(context)
        .add(LoginEvent.authLogIn(email: email, password: password));
  } else {
    showdiologue(context, 'fields mustnot be empty');
  }
}
