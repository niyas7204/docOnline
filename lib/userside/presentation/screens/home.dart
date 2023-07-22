import 'package:doc_online/userside/businessLogic/bloc/user_profile_bloc.dart';
import 'package:doc_online/userside/presentation/core/wisgets/drawer.dart';
import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';
import 'package:doc_online/userside/presentation/screens/all_doctor.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../doctorside/presentation/core/logo.dart';
import '../core/widgets.dart';

class HomeSc extends StatelessWidget {
  const HomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userBloc = BlocProvider.of<UsersideBloc>(context);
      userBloc.add(const UsersideEvent.getDepartmentdata());
      userBloc.add(const UsersideEvent.getHospitalData());
      BlocProvider.of<UserProfileBloc>(context)
          .add(const UserProfileEvent.getUserprofile());
    });
    return Scaffold(
      
      endDrawer: homeDrawer(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<UsersideBloc, UsersideState>(
            builder: (context, state) {
              return state.departmentData != null && state.hospitalData != null
                  ? Column(
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
                              Positioned(left: 40, top: 10, child: logo()),
                              Positioned(
                                  right: 16,
                                  top: 10,
                                  child: InkWell(
                                    onTap: () {
                                      Scaffold.of(context).openEndDrawer();
                                    },
                                    child: const CircleAvatar(
                                      radius: 20,
                                      child: Icon(Icons.person_2_sharp),
                                    ),
                                  )),
                              Positioned(
                                  top: 60,
                                  right: 20,
                                  child: Text(
                                    'We Care About \nYour Health',
                                    style: TextStyle(
                                        color: Colors.blueGrey.withOpacity(.5),
                                        fontSize: 30),
                                  )),
                              Positioned(
                                  top: 150,
                                  right: 50,
                                  child: Text(
                                    'specialized docters all\n over the country',
                                    style: TextStyle(
                                        color: Colors.blueGrey.withOpacity(.5),
                                        fontSize: 25),
                                  )),
                              Positioned(
                                  top: 220,
                                  right: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              const SearchScreen(),
                                        ));
                                      },
                                      child: cText1('Appointment')))
                            ],
                          ),
                        ),
                        space1h(),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: heading(
                            'Search by department',
                          ),
                        ),
                        space1h(),
                        SizedBox(
                          height: 170,
                          child: Row(
                            children: [
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      state.departmentData!.departments!.length,
                                  itemBuilder: (context, index) =>
                                      departmentCard(
                                          state.departmentData!
                                              .departments![index].name!,
                                          state.departmentData!
                                              .departments![index].id!,
                                          context),
                                ),
                              ),
                            ],
                          ),
                        ),
                        space1h(),
                        Container(
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
                                space1h(),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: (50 / 80)),
                                  itemCount:
                                      state.hospitalData!.hospitals!.length,
                                  itemBuilder: (context, index) => hospitalCard(
                                      state.hospitalData!.hospitals![index]
                                          .name!,
                                      state.hospitalData!.hospitals![index]
                                          .image!.secureUrl!,
                                      state.hospitalData!.hospitals![index]
                                          .address!,
                                      context,
                                      state
                                          .hospitalData!.hospitals![index].id!),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  : const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
