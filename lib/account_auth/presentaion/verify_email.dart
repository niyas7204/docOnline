import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/businesslogic/bloc/forgotpassword_bloc.dart';
import 'package:doc_online/account_auth/businesslogic/verifyotpbloc/verifyotp_bloc.dart';

import 'package:doc_online/account_auth/presentaion/log_in.dart';
import 'package:doc_online/account_auth/presentaion/new_password.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/core/get_all_data.dart';
import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyEmail extends StatelessWidget {
  final bool isSignup;
  const VerifyEmail({super.key, required this.isSignup});

  @override
  Widget build(BuildContext context) {
    TextEditingController otpcontroller = TextEditingController();

    return Scaffold(
      body: isSignup
          ? BlocListener<VerifyotpBloc, VerifyotpState>(
              listener: (context, state) {
                if (state.verify.status == ApiStatus.complete) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Login(),
                  ));
                }
              },
              child: otpscreenBody(otpcontroller, context),
            )
          : BlocListener<ForgotpasswordBloc, ForgotpasswordState>(
              listener: (context, state) {
                if (state.forgot.status == ApiStatus.complete) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const NewPassword(),
                  ));
                }
              },
              child: otpscreenBody(otpcontroller, context),
            ),
    );
  }

  SafeArea otpscreenBody(
      TextEditingController otpcontroller, BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Positioned(top: 40, left: 16, child: logo()),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              header1('Verify Email'),
              space1h(),
              Text('Enter the otp sent to \n ${GetAllData.email}'),
              Column(
                children: [
                  labelText('OTP'),
                  textField('OTP', otpcontroller),
                  space1h(),
                ],
              ),
              SizedBox(
                width: 160.w,
                height: 35.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: baseColor,
                  ),
                  onPressed: () {
                    if (otpcontroller.text.isNotEmpty) {
                      isSignup
                          ? BlocProvider.of<VerifyotpBloc>(context)
                              .add(VerifyotpEvent.checkOtp(otpcontroller.text))
                          : BlocProvider.of<ForgotpasswordBloc>(context).add(
                              ForgotpasswordEvent.getVerifyRgister(
                                  otp: otpcontroller.text));
                    } else {
                      showAlertdiolog(context, 'OTP not entered.');
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
        )
      ],
    ));
  }
}
