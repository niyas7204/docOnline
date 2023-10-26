import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/doctorside/bloc/doctor/log_in/doctor_bloc.dart';

import 'package:doc_online/components/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:doc_online/doctorside/presentation/home.dart';
import 'package:doc_online/utils/alert_diologe.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomTexts.header1('Login'),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SpaceSized.space1h,
                              CustomTexts.labelText('Email'),
                              textField('Email', emailcontroller),
                              SpaceSized.space1h,
                              CustomTexts.labelText('Password'),
                              textField('Password', passwordcontroller),
                              SpaceSized.space1h,
                            ],
                          ),
                          state.logResponse!.status == ApiStatus.error
                              ? CustomTexts.errorText(
                                  'Email and Password shouldnot match')
                              : const SizedBox(),
                          SizedBox(
                            width: 160,
                            height: 35,
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
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ),
                          ),
                          SpaceSized.space1h,
                        ],
                      ),
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
    const ShowAlert(errorText: 'fields mustnot be empty');
  }
}
