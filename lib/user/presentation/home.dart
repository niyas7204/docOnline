import 'dart:developer';

import 'package:doc_online/account_auth/domain/authentication/email_auth.dart';
import 'package:doc_online/account_auth/signin/core/logo.dart';
import 'package:doc_online/account_auth/signin/core/widgets.dart';
import 'package:doc_online/user/core/api_trial.dart';
import 'package:doc_online/user/core/bloc/userside_bloc.dart';
import 'package:doc_online/user/core/widgets/common_widgets.dart';
import 'package:doc_online/user/infrastrusture/hospital_impimentation.dart';
import 'package:doc_online/user/presentation/by_department.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSc extends StatelessWidget {
  const HomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userBloc = BlocProvider.of<UsersideBloc>(context);
      userBloc.add(const UsersideEvent.getDepartmentdata());
      userBloc.add(const UsersideEvent.getHospitalData());
    });
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<UsersideBloc, UsersideState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 250.h,
                    width: 360.w,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          child: SizedBox(
                            child: Image.asset(
                              'assets/image/home_bn.jpg',
                              fit: BoxFit.cover,
                              width: 360.w,
                              height: 250.h,
                            ),
                          ),
                        ),
                        Positioned(left: 16, top: 10, child: logo()),
                        Positioned(
                            right: 16,
                            child: ElevatedButton(
                                onPressed: () {
                                  updateshredPreference('', false);
                                  SystemNavigator.pop();
                                },
                                child: const Text('Log out'))),
                        const Positioned(
                          top: 60,
                          right: 20,
                          child: Text(
                            'We Care About \nYour Health',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(150, 95, 95, 95),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Positioned(
                            top: 150,
                            right: 50,
                            child: Text(
                              'specialized docters all\n over the country',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(150, 95, 95, 95),
                                  fontWeight: FontWeight.w500),
                            )),
                        Positioned(
                            top: 220,
                            right: 50,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey,
                                ),
                                onPressed: () {
                                  trial();
                                },
                                child: const Text(
                                  'Appointment',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: baseColor,
                                      fontWeight: FontWeight.w600),
                                )))
                      ],
                    ),
                  ),
                  space1(),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Search by department',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  space1(),
                  SizedBox(
                    height: 170,
                    child: Row(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.departmentData.length,
                            itemBuilder: (context, index) => departmentCard(
                                state.departmentData[index].name!,
                                state.departmentData[index].id!,
                                context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  space1(),
                  Container(
                    height: 1100,
                    color: const Color.fromARGB(162, 176, 197, 193),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text(
                              'Top Hospital',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ),
                          space1(),
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: (50 / 80)),
                            itemCount: 5,
                            itemBuilder: (context, index) => hospitalCard(
                                state.hospitalData[index].hospitalname!,
                                state.hospitalData[index].hImage!.imageUrl!,
                                state.hospitalData[index].hospitaladress!),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
