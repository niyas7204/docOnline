import 'package:doc_online/core/failure/failure.dart';

import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/account_auth/businesslogic/signup/signup_bloc.dart';
import 'package:doc_online/userside/account_auth/presentaion/helpers/formfieldvalidation.dart';
import 'package:doc_online/userside/account_auth/presentaion/verify_email.dart';
import 'package:doc_online/userside/account_auth/presentaion/widgets/formfield.dart';

import 'package:flutter/material.dart';
import 'package:doc_online/core/get_all_data.dart';
import 'package:doc_online/userside/presentation/widgets/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

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
    List<TextEditingController> controllers = [
      usernamecontroller,
      emailcontroller,
      passwordcontroller,
      confirmPasswordcontroller
    ];
    var labels = ['User Name', 'Email', 'Password', 'Confirm Password'];
    return Scaffold(
      body: BlocListener<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state.signUpResponse!.status == ApiStatus.complete) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const VerifyEmail(
                isSignup: true,
              ),
            ));
          }
        },
        child: SafeArea(child: BlocBuilder<SignupBloc, SignupState>(
          builder: (context, state) {
            return Stack(
              children: [
                state.signUpResponse!.status == ApiStatus.loading
                    ? Container(
                        color: const Color.fromARGB(209, 49, 49, 49),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : const SizedBox(),
                Positioned(left: 16, child: logo()),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          header1('Sign Up'),
                          ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) => textEditField(
                                  labels[index], controllers[index]),
                              separatorBuilder: (context, index) => space1h(),
                              itemCount: labels.length),
                          space1h(),
                          SizedBox(
                            width: 160.w,
                            height: 35.h,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: baseColor,
                                ),
                                onPressed: () async {
                                  GetAllData.email =
                                      emailcontroller.text.trimRight();
                                  GetAllData.userName =
                                      usernamecontroller.text.trimRight();
                                  GetAllData.password = passwordcontroller.text;
                                  bool valid = validateFieldEdit(
                                      controllers, labels, context);
                                  if (valid) {
                                    if (GetAllData.password ==
                                        confirmPasswordcontroller.text) {
                                      BlocProvider.of<SignupBloc>(context)
                                          .add(const SignupEvent.getSignUp());
                                      if (state.signUpResponse!.status ==
                                          ApiStatus.error) {
                                        if (state.signUpResponse!.failure ==
                                            const MainFailure.clientFailure()) {
                                          showAlertdiolog(
                                              context, 'network failure');
                                        } else {
                                          showAlertdiolog(
                                              context, 'user already exist');
                                        }
                                      } else if (state.signUpResponse!.status ==
                                          ApiStatus.loading) {
                                        const CircularProgressIndicator();
                                      }
                                    } else {
                                      showAlertdiolog(
                                          context, 'password shouldnot match');
                                    }
                                  }
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.white),
                                )),
                          )
                        ],
                      ),
                    ))
              ],
            );
          },
        )),
      ),
    );
  }
}
