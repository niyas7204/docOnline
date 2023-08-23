import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/account_auth/businesslogic/bloc/forgotpassword_bloc.dart';
import 'package:doc_online/userside/account_auth/presentaion/helpers/formfieldvalidation.dart';
import 'package:doc_online/userside/presentation/widgets/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  header1('Reset Password'),
                  space1h(),
                  labelText('New Password'),
                  textField('New Password', restcontroller),
                  space1h(),
                  labelText('Confirm Password'),
                  textField('Confirm Password', confirmcontroller),
                  space1h(),
                  SizedBox(
                    width: 160.w,
                    height: 35.h,
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
                            showAlertdiolog(
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
