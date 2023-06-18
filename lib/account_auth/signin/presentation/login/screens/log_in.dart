import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/account_auth/sign_up/signup_bloc/signup_bloc.dart';
import 'package:doc_online/account_auth/signin/application/bloc/login_bloc.dart';
import 'package:doc_online/account_auth/signin/core/widgets.dart';
import 'package:doc_online/account_auth/signin/core/logo.dart';
import 'package:doc_online/account_auth/signin/presentation/login/screens/sign_up.dart';
import 'package:doc_online/account_auth/signin/presentation/login/screens/verify_email.dart';
import 'package:doc_online/user/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                      space1(),
                      textField('Username', emailcontroller),
                      space1(),
                      textField('Password', passwordcontroller),
                      Builder(
                        builder: (context) {
                          if (state.failureOrSuccess == none()) {
                            return space1();
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
                            final navigator = Navigator.of(context);
                            if (emailcontroller.text.isNotEmpty &&
                                passwordcontroller.text.isNotEmpty) {
                              BlocProvider.of<LoginBloc>(context).add(
                                  LoginEvent.authLogIn(
                                      email: emailcontroller.text,
                                      password:
                                          passwordcontroller.text.toString()));
                              SharedPreferences sPrefs =
                                  await SharedPreferences.getInstance();
                              var sToken = sPrefs.getString('token');

                              if (sToken!.isNotEmpty) {
                                navigator.pushReplacement(MaterialPageRoute(
                                  builder: (context) => const HomeSc(),
                                ));
                              }
                            } else {
                              showdiologue(context, 'fields mustnot be empty');
                            }
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                      space1(),
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

toNavigation(context) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(
    builder: (context) => const HomeSc(),
  ));
}
