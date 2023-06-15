import 'dart:developer';

import 'package:doc_online/domain/authentication/email_auth.dart';
import 'package:doc_online/sign_up/signup_bloc/signup_bloc.dart';
import 'package:doc_online/sign_up/get_all_data.dart';
import 'package:doc_online/signin/core/widgets.dart';
import 'package:doc_online/signin/core/logo.dart';
import 'package:doc_online/signin/presentation/login/screens/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController confirmPasswordcontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(top: 40, left: 16, child: logo()),
          Padding(
              padding: const EdgeInsets.all(10),
              child: BlocBuilder<SignupBloc, SignupState>(
                builder: (context, state) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        header1('Sign In'),
                        space1(),
                        textField('Email', emailcontroller),
                        space1(),
                        textField('Username', usernamecontroller),
                        space1(),
                        textField('Password', passwordcontroller),
                        space1(),
                        textField('confirmPassword', confirmPasswordcontroller),
                        space1(),
                        SizedBox(
                          width: 160.w,
                          height: 35.h,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: baseColor,
                            ),
                            onPressed: () async {
                              GetAllData.email = emailcontroller.text;
                              GetAllData.userName = usernamecontroller.text;
                              GetAllData.password = passwordcontroller.text;
                              bool isValid = isValidEmail(GetAllData.email!);
                              if (isValid) {
                                if (GetAllData.password ==
                                        confirmPasswordcontroller.text &&
                                    GetAllData.email != null &&
                                    GetAllData.userName != null) {
                                  BlocProvider.of<SignupBloc>(context)
                                      .add(const SignupEvent.getSignUp());
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const VerifyEmail(),
                                      ));
                                } else {
                                  log('not valid');
                                }
                              }
                            },
                            child: const Text(
                              'SignUp',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ))
        ],
      )),
    );
  }
}
