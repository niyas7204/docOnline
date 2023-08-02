import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/businesslogic/signup_bloc/signup_bloc.dart';
import 'package:doc_online/account_auth/presentaion/helpers/formfieldvalidation.dart';
import 'package:doc_online/account_auth/presentaion/verify_email.dart';
import 'package:doc_online/account_auth/presentaion/widgets/formfield.dart';

import 'package:doc_online/core/failure/failure.dart';

import 'package:flutter/material.dart';
import 'package:doc_online/core/get_all_data.dart';
import 'package:doc_online/userside/presentation/core/widgets.dart';
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
    var labels = ['UserName', 'Email', ' password', 'confirm password'];
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
                        header1('SignUp'),
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
                                GetAllData.email = emailcontroller.text;
                                GetAllData.userName = usernamecontroller.text;
                                GetAllData.password = passwordcontroller.text;
                                bool valid = validateFieldEdit(
                                    controllers, labels, context);
                                if (valid) {
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
                                            const VerifyEmail(isSignup: true,),
                                      ));
                                    }
                                  } else {
                                    showdiologue(
                                        context, 'password shouldnot match');
                                  }
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
