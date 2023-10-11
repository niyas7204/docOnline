import 'package:doc_online/authentication/user/businesslogic/forgotpassword/forgotpassword_bloc.dart';
import 'package:doc_online/authentication/user/businesslogic/verifyotpbloc/verifyotp_bloc.dart';
import 'package:doc_online/authentication/user/presentaion/log_in.dart';
import 'package:doc_online/authentication/user/presentaion/new_password.dart';
import 'package:doc_online/core/get_all_data.dart';
import 'package:doc_online/core/responsehandler/status.dart';

import 'package:doc_online/components/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';
import 'package:doc_online/utils/alert_diologe.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              child: otpscreenBody(otpcontroller, context, isSignup),
            )
          : BlocListener<ForgotpasswordBloc, ForgotpasswordState>(
              listener: (context, state) {
                if (state.forgot.status == ApiStatus.complete) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const NewPassword(),
                  ));
                }
              },
              child: otpscreenBody(otpcontroller, context, isSignup),
            ),
    );
  }

  SafeArea otpscreenBody(TextEditingController otpcontroller,
      BuildContext context, bool isSignup) {
    return SafeArea(child: BlocBuilder<ForgotpasswordBloc, ForgotpasswordState>(
      builder: (context, forgetState) {
        return BlocBuilder<VerifyotpBloc, VerifyotpState>(
          builder: (context, verifyState) {
            return Stack(
              children: [
                isSignup
                    ? verifyState.verify.status == ApiStatus.loading
                        ? Container(
                            color: const Color.fromARGB(209, 49, 49, 49),
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : const SizedBox()
                    : forgetState.forgot.status == ApiStatus.loading
                        ? Container(
                            color: const Color.fromARGB(209, 49, 49, 49),
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          )
                        : const SizedBox(),
                Positioned(top: 40, left: 16, child: logo()),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTexts.header1('Verify Email'),
                      SpaceSized.space1h,
                      Text('Enter the otp sent to \n ${GetAllData.email}'),
                      Column(
                        children: [
                          CustomTexts.labelText('OTP'),
                          textField('OTP', otpcontroller),
                          SpaceSized.space1h,
                        ],
                      ),
                      SizedBox(
                        width: 160,
                        height: 35,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: baseColor,
                          ),
                          onPressed: () {
                            if (otpcontroller.text.isNotEmpty) {
                              isSignup
                                  ? BlocProvider.of<VerifyotpBloc>(context).add(
                                      VerifyotpEvent.checkOtp(
                                          otpcontroller.text))
                                  : BlocProvider.of<ForgotpasswordBloc>(context)
                                      .add(ForgotpasswordEvent.getVerifyRgister(
                                          otp: otpcontroller.text));
                            } else {
                              CustomAlertDiologe.showAlertdiolog(
                                  context, 'OTP not entered.');
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
            );
          },
        );
      },
    ));
  }
}
