import 'package:doc_online/sign_up/verifyotpbloc/verifyotp_bloc.dart';
import 'package:doc_online/signin/core/widgets.dart';
import 'package:doc_online/signin/core/logo.dart';
import 'package:doc_online/signin/presentation/login/screens/log_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController otpcontroller = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(top: 40, left: 16, child: logo()),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                header1('Verify Email'),
                const Text('Enter the otp sent to \n abcd@gmail.com'),
                textField('OTP', otpcontroller),
                space1(),
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
                    },
                    child: const Text(
                      'confirm',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
