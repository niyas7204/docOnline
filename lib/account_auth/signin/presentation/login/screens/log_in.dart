import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/account_auth/sign_up/signup_bloc/signup_bloc.dart';
import 'package:doc_online/account_auth/signin/presentation/login/screens/sign_up.dart';
import 'package:doc_online/doctorside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:doc_online/doctorside/presentation/log_in/log_in.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../userside/presentation/screens/home.dart';

import '../../../application/bloc/login_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    log('state log in');
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Stack(
              children: [
                state.isloading
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
                      space1h(),
                      textField('Username', emailcontroller),
                      space1h(),
                      textField('Password', passwordcontroller),
                      Builder(
                        builder: (context) {
                          if (state.failureOrSuccess == none()) {
                            return space1h();
                          } else if (state.failureOrSuccess ==
                              some(left(const MainFailure.serverFailure()))) {
                            return errorText('no user found');
                          }
                          return errorText('network failure');
                        },
                      ),
                      TextButton(
                          onPressed: () async {
                            BlocProvider.of<SignupBloc>(context)
                                .add(const SignupEvent.getSignUp());
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
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
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
    );
  }
}

onPress(BuildContext context, String email, String password) async {
  log('on');
  final navigator = Navigator.of(context);
  if (email.isNotEmpty && password.isNotEmpty) {
    log('on press');
    BlocProvider.of<LoginBloc>(context)
        .add(LoginEvent.authLogIn(email: email, password: password));
    Future.delayed(const Duration(milliseconds: 2000)).then((_) async {
      SharedPreferences sPrefs = await SharedPreferences.getInstance();
      var sToken = sPrefs.getString('token');

      if (sToken!.isNotEmpty) {
        navigator.pushReplacement(MaterialPageRoute(
          builder: (context) => const HomeSc(),
        ));
      } else {
        log('token empty');
      }
    });
  } else {
    showdiologue(context, 'fields mustnot be empty');
  }
}
