import 'package:doc_online/account_auth/domain/authentication/email_auth.dart';
import 'package:doc_online/ui/core/logo.dart';
import 'package:doc_online/ui/core/widgets.dart';
import 'package:doc_online/ui/user/core/api_trial.dart';
import 'package:doc_online/bloc/user_side/userside_bloc.dart';
import 'package:doc_online/ui/user/core/widgets/common_widgets.dart';

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
                        Positioned(
                            top: 60,
                            right: 20,
                            child: header1('We Care About \nYour Health')),
                        Positioned(
                            top: 150,
                            right: 50,
                            child: header1(
                                'specialized docters all\n over the country')),
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
                                child: cText1('Appointment')))
                      ],
                    ),
                  ),
                  space1(),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: heading(
                      'Search by department',
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
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: heading(
                              'Top Hospital',
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
