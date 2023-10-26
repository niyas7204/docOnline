import 'dart:developer';

import 'package:doc_online/authentication/user/businesslogic/signup/signup_bloc.dart';
import 'package:doc_online/authentication/user/presentaion/helpers/formfieldvalidation.dart';
import 'package:doc_online/authentication/user/presentaion/verify_email.dart';
import 'package:doc_online/authentication/user/presentaion/widgets/formfield.dart';
import 'package:doc_online/core/failure/failure.dart';

import 'package:doc_online/core/responsehandler/status.dart';

import 'package:doc_online/utils/alert_diologe.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';

import 'package:flutter/material.dart';
import 'package:doc_online/core/get_all_data.dart';
import 'package:doc_online/components/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController confirmPasswordcontroller = TextEditingController();
    List<TextEditingController> controllers = [
      emailcontroller,
      usernamecontroller,
      passwordcontroller,
      confirmPasswordcontroller
    ];
    List<String> labels = [
      'Email',
      'User Name',
      'Password',
      'Confirm Password'
    ];
    final formKey = GlobalKey<FormState>();
    return Scaffold(
        body: BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        log('listener');
        if (state.signUpResponse!.status == ApiStatus.complete) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const VerifyEmail(
              isSignup: true,
            ),
          ));
        }
      },
      builder: (context, state) {
        return SafeArea(
            child: Stack(
          children: [
            state.signUpResponse!.status == ApiStatus.loading
                ? Container(
                    color: const Color.fromARGB(209, 49, 49, 49),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : const SizedBox(),
            Positioned(left: 16.0, child: logo()),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTexts.header1('Sign Up'),
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: labels.length,
                          itemBuilder: (context, index) =>
                              TextFieldWidgets.textEditField(
                                  labels[index], controllers[index], formKey),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      height: 35,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: baseColor,
                          ),
                          onPressed: () async {
                            GetAllData.email = emailcontroller.text.trim();
                            GetAllData.userName =
                                usernamecontroller.text.trim();
                            GetAllData.password =
                                passwordcontroller.text.trim();

                            if (formKey.currentState!.validate()) {
                              bool valid = validateFieldEdit(
                                  controllers, labels, context);
                              if (valid) {
                                if (GetAllData.password ==
                                    confirmPasswordcontroller.text) {
                                  BlocProvider.of<SignupBloc>(context).add(
                                      SignupEvent.getSignUp(formKey: formKey));

                                  if (state.signUpResponse!.status ==
                                      ApiStatus.error) {
                                    if (state.signUpResponse!.failure ==
                                        const MainFailure.clientFailure()) {
                                      showDialog(
                                        context: context,
                                        builder: (context) => const ShowAlert(
                                            errorText: 'network failure'),
                                      );
                                    } else {
                                      const ShowAlert(
                                          errorText: 'user already exist');
                                    }
                                  } else if (state.signUpResponse!.status ==
                                      ApiStatus.loading) {
                                    const CircularProgressIndicator();
                                  }
                                } else {
                                  const ShowAlert(
                                      errorText: 'password shouldnot match');
                                }
                              }
                            }
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
      },
    ));
  }
}
