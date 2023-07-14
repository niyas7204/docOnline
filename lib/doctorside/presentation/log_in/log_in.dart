import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';

import 'package:doc_online/doctorside/bloc/doctor/log_in/doctor_bloc.dart';

import 'package:doc_online/doctorside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:doc_online/doctorside/presentation/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../account_auth/signin/application/bloc/login_bloc.dart';

class DoctorLogin extends StatelessWidget {
  const DoctorLogin({super.key});

  @override
  Widget build(BuildContext context) {
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
                          } else if (state.failureOrSuccess ==
                              some(left(const MainFailure.clientFailure()))) {
                            return errorText('data failure');
                          }
                          return errorText('network failure');
                        },
                      ),
                      SizedBox(
                        width: 160.w,
                        height: 35.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: baseColor,
                          ),
                          onPressed: () async {
                            await onPress(context, emailcontroller.text,
                                passwordcontroller.text);
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                      space1h(),
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
  final navigator = Navigator.of(context);
  if (email.isNotEmpty && password.isNotEmpty) {
    log('on press');
    BlocProvider.of<DoctorBloc>(context)
        .add(DoctorEvent.getDoctorLogIn(email: email, password: password));
    Future.delayed(const Duration(milliseconds: 1000)).then((_) async {
      SharedPreferences sPrefs = await SharedPreferences.getInstance();
      var sToken = sPrefs.getString('token');

      if (sToken!.isNotEmpty) {
        navigator.pushReplacement(MaterialPageRoute(
          builder: (context) => const DoctorHomeSc(),
        ));
      } else {
        log('token empty');
      }
    });
  } else {
    showdiologue(context, 'fields mustnot be empty');
  }
}