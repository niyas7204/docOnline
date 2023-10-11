import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/account_auth/businesslogic/bloc/forgotpassword_bloc.dart';
import 'package:doc_online/userside/account_auth/presentaion/helpers/formfieldvalidation.dart';
import 'package:doc_online/userside/presentation/components/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';
import 'package:doc_online/utils/alert_diologe.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 

import 'log_in.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController restcontroller = TextEditingController();
    TextEditingController confirmcontroller = TextEditingController();
    return Scaffold(
      body: BlocListener<ForgotpasswordBloc, ForgotpasswordState>(
        listener: (context, state) {
          if (state.forgot.status == ApiStatus.complete) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const Login(),
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
                  CustomTexts.header1('Reset Password'),
                  SpaceSized.space1h(),
                  CustomTexts.labelText('New Password'),
                  textField('New Password', restcontroller),
                  SpaceSized.space1h(),
                  CustomTexts.labelText('Confirm Password'),
                  textField('Confirm Password', confirmcontroller),
                  SpaceSized.space1h(),
                  SizedBox(
                    width: 160,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: baseColor,
                      ),
                      onPressed: () {
                        bool valid = validateFieldEdit(
                            [restcontroller, confirmcontroller],
                            ['New password', 'Confirm password'],
                            context);
                        if (valid) {
                          if (restcontroller.text == confirmcontroller.text) {
                            BlocProvider.of<ForgotpasswordBloc>(context).add(
                                ForgotpasswordEvent.getRgister(
                                    password: restcontroller.text));
                          } else {
                            CustomAlertDiologe.showAlertdiolog(
                                context, 'Passwords should not match');
                          }
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
        )),
      ),
    );
  }
}
