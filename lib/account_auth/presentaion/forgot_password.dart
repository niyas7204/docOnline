import 'package:doc_online/account_auth/businesslogic/bloc/forgotpassword_bloc.dart';
import 'package:doc_online/account_auth/presentaion/verify_email.dart';
import 'package:doc_online/core/get_all_data.dart';
import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    return Scaffold(
      body: BlocListener<ForgotpasswordBloc, ForgotpasswordState>(
        listener: (context, state) {
          if (state.forgot.status == ApiStatus.complete) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const VerifyEmail(isSignup: false),
            ));
          }
        },
        child: SafeArea(
            child: Stack(
          children: [
            Positioned(top: 40, left: 16, child: logo()),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  header1('Forgot Password'),
                  space1h(),
                  const Text('Enter the email adress'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      labelText('Email'),
                      textField('Email', emailcontroller),
                      space1h(),
                    ],
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: baseColor,
                      ),
                      onPressed: () {
                        if (emailcontroller.text.isNotEmpty) {
                          GetAllData.email = emailcontroller.text;
                          BlocProvider.of<ForgotpasswordBloc>(context).add(
                              ForgotpasswordEvent.getOtp(
                                  email: emailcontroller.text));
                        }
                      },
                      child: const Text('Next'))
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
