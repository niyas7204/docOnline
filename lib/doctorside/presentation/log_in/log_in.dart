import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/doctorside/bloc/doctor/log_in/doctor_bloc.dart';

import 'package:doc_online/userside/presentation/widgets/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:doc_online/doctorside/presentation/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorLogin extends StatelessWidget {
  const DoctorLogin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    return BlocListener<DoctorBloc, DoctorState>(
      listener: (context, state) {
        if (state.logResponse!.status == ApiStatus.complete) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const DoctorHomeSc(),
          ));
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<DoctorBloc, DoctorState>(
            builder: (context, state) {
              return Stack(
                children: [
                  state.logResponse!.status == ApiStatus.loading
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            space1h(),
                            labelText('Email'),
                            textField('Email', emailcontroller),
                            space1h(),
                            labelText('Password'),
                            textField('Password', passwordcontroller),
                            space1h(),
                          ],
                        ),
                        state.logResponse!.status == ApiStatus.error
                            ? errorText('Email and Password shouldnot match')
                            : const SizedBox(),
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
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
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
      ),
    );
  }
}

onPress(BuildContext context, String email, String password) async {
  if (email.isNotEmpty && password.isNotEmpty) {
    BlocProvider.of<DoctorBloc>(context)
        .add(DoctorEvent.getDoctorLogIn(email: email, password: password));
  } else {
    showAlertdiolog(context, 'fields mustnot be empty');
  }
}
