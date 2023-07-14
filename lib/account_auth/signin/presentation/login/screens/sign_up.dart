import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';

import 'package:flutter/material.dart';

import 'package:doc_online/account_auth/sign_up/signup_bloc/signup_bloc.dart';
import 'package:doc_online/account_auth/sign_up/get_all_data.dart';
import 'package:doc_online/doctorside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../userside/presentation/screens/login/screens/verify_email.dart';

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
          Positioned(left: 16, child: logo()),
          Padding(
              padding: const EdgeInsets.all(10),
              child: BlocBuilder<SignupBloc, SignupState>(
                builder: (context, state) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        header1('Sign In'),
                        space1h(),
                        textField('Email', emailcontroller),
                        space1h(),
                        textField('Username', usernamecontroller),
                        space1h(),
                        textField('Password', passwordcontroller),
                        space1h(),
                        textField('confirmPassword', confirmPasswordcontroller),
                        space1h(),
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

                                if (GetAllData.password!.isNotEmpty &&
                                    confirmPasswordcontroller.text.isNotEmpty &&
                                    GetAllData.email!.isNotEmpty &&
                                    GetAllData.userName!.isNotEmpty) {
                                  if (GetAllData.password ==
                                      confirmPasswordcontroller.text) {
                                    BlocProvider.of<SignupBloc>(context)
                                        .add(const SignupEvent.getSignUp());
                                    if (state.failureOrSuccess ==
                                        some(left(const MainFailure
                                            .clientFailure()))) {
                                      showdiologue(context, 'network failure');
                                    } else if (state.failureOrSuccess ==
                                        some(left(const MainFailure
                                            .serverFailure()))) {
                                      showdiologue(
                                          context, 'user already exist');
                                    } else if (state.signUpResponse!.error ==
                                        false) {
                                      Navigator.of(context)
                                          .pushReplacement(MaterialPageRoute(
                                        builder: (context) =>
                                            const VerifyEmail(),
                                      ));
                                    }
                                  } else {
                                    showdiologue(
                                        context, 'password shouldnot match');
                                  }
                                } else {
                                  showdiologue(
                                      context, 'fields mustnot be empty');
                                }
                              },
                              child: const Text(
                                'SignUp',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              )),
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
