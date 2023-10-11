import 'package:doc_online/core/failure/failure.dart';

import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/account_auth/businesslogic/signup/signup_bloc.dart';
import 'package:doc_online/userside/account_auth/presentaion/helpers/formfieldvalidation.dart';
import 'package:doc_online/userside/account_auth/presentaion/verify_email.dart';
import 'package:doc_online/userside/account_auth/presentaion/widgets/formfield.dart';
import 'package:doc_online/utils/alert_diologe.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';

import 'package:flutter/material.dart';
import 'package:doc_online/core/get_all_data.dart';
import 'package:doc_online/userside/presentation/components/widgets.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';

import 'package:flutter_bloc/flutter_bloc.dart'; 
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();
    TextEditingController confirmPasswordcontroller = TextEditingController();
    List<TextEditingController> controllers = [
      usernamecontroller,
      emailcontroller,
      passwordcontroller,
      confirmPasswordcontroller
    ];
    var labels = ['User Name', 'Email', 'Password', 'Confirm Password'];
    return Scaffold(
     
      body:BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
         if (state.signUpResponse!.status == ApiStatus.complete) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const VerifyEmail(
                isSignup: true,
              ),
            ));
          }
        },
        builder: (context, state) {
          return SafeArea(
            child:Center(
              child: ListView(
              
                shrinkWrap: true,
                children: [
                  SingleChildScrollView(
                 
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                              
                        children: [
                          // state.signUpResponse!.status == ApiStatus.loading
                          //     ? Container(
                          //         color: const Color.fromARGB(209, 49, 49, 49),
                          //         child: const Center(
                          //           child: CircularProgressIndicator(),
                          //         ),
                          //       )
                          //     : const SizedBox(),
                        logo(),
                        Align(
                          alignment: Alignment.center,
                          child:CustomTexts.header1('Sign Up') ,
                        ),
                        
                        for(int index=0;index<labels.length;index++)
                       TextFieldWidgets.textEditField(
                                                    labels[index], controllers[index]),
                         
                          SpaceSized.space1h(),
                         
                          SizedBox(
                            width: 160,
                            height: 35,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: baseColor,
                                ),
                                onPressed: () async {
                                  GetAllData.email =
                                      emailcontroller.text.trimRight();
                                  GetAllData.userName =
                                      usernamecontroller.text.trimRight();
                                  GetAllData.password = passwordcontroller.text;
                                  bool valid = validateFieldEdit(
                                      controllers, labels, context);
                                  if (valid) {
                                    if (GetAllData.password ==
                                        confirmPasswordcontroller.text) {
                                      BlocProvider.of<SignupBloc>(context)
                                          .add(const SignupEvent.getSignUp());
                                      if (state.signUpResponse!.status ==
                                          ApiStatus.error) {
                                        if (state.signUpResponse!.failure ==
                                            const MainFailure.clientFailure()) {
                                          CustomAlertDiologe.showAlertdiolog(
                                              context, 'network failure');
                                        } else {
                                          CustomAlertDiologe.showAlertdiolog(
                                              context, 'user already exist');
                                        }
                                      } else if (state.signUpResponse!.status ==
                                          ApiStatus.loading) {
                                        const CircularProgressIndicator();
                                      }
                                    } else {
                                      CustomAlertDiologe.showAlertdiolog(
                                          context, 'password shouldnot match');
                                    }
                                  }
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.white),
                                )),
                          ),
                        
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
        },
      )
       
    );
  }
}
