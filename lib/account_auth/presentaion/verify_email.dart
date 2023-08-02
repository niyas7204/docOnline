import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/businesslogic/sign_up/verifyotpbloc/verifyotp_bloc.dart';

import 'package:doc_online/account_auth/presentaion/log_in.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyEmail extends StatelessWidget {
 final bool isSignup;
const VerifyEmail({super.key,required this.isSignup});

  @override
  Widget build(BuildContext context) {
    TextEditingController otpcontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(top: 40, left: 16, child: logo()),
          BlocBuilder<VerifyotpBloc, VerifyotpState>(
            builder: (context, state) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    header1('Verify Email'),
                    const Text('Enter the otp sent to \n abcd@gmail.com'),
                    textField('OTP', otpcontroller),
                    space1h(),
                    Builder(
                      builder: (context) {
                        if (state.failureOrSuccess ==
                            some(left(const MainFailure.clientFailure()))) {
                          return errorText('invalid otp');
                        }
                        return const SizedBox();
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
                          BlocProvider.of<VerifyotpBloc>(context)
                              .add(VerifyotpEvent.checkOtp(otpcontroller.text));

                          if (!state.signUpResponse!.error!) {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const Login(),
                            ));
                          }
                        },
                        child: const Text(
                          'confirm',
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          )
        ],
      )),
    );
  }
}
