import 'package:doc_online/core/get_all_data.dart';

import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/account_auth/businesslogic/bloc/forgotpassword_bloc.dart';
import 'package:doc_online/userside/account_auth/presentaion/verify_email.dart';
import 'package:doc_online/userside/presentation/components/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';

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
                  CustomTexts.header1('Forgot Password ?'),
                  SpaceSized.space1h(),
                  const Text('Enter the email adress'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTexts.labelText('Email'),
                      textField('Email', emailcontroller),
                      SpaceSized.space1h(),
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
