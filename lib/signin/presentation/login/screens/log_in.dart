import 'package:dartz/dartz.dart';
import 'package:doc_online/domain/failure/failure.dart';
import 'package:doc_online/signin/application/bloc/login_bloc.dart';
import 'package:doc_online/signin/core/widgets.dart';
import 'package:doc_online/signin/core/logo.dart';
import 'package:doc_online/signin/presentation/login/screens/sign_up.dart';
import 'package:doc_online/signin/presentation/login/screens/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  top: 40.0,
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
                      TextButton(
                          onPressed: () async {},
                          child: const Text(
                            "Forgot password",
                            style: TextStyle(color: Colors.blue),
                          )),
                      Builder(
                        builder: (context) {
                          if (state.failureOrSuccess == none()) {
                            return space1();
                          } else if (state.failureOrSuccess ==
                              some(left(const MainFailure.serverFailure()))) {
                            return const Text('no user found');
                          }
                          return const Text('network failure');
                        },
                      ),
                      SizedBox(
                        width: 160.w,
                        height: 35.h,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: baseColor,
                          ),
                          onPressed: () {
                            BlocProvider.of<LoginBloc>(context)
                                .add(const LoginEvent.authLogIn());
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
                                    print(state.logResponse!.token);

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
