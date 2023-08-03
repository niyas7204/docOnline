import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/businessLogic/departments/departments_bloc.dart';
import 'package:doc_online/userside/businessLogic/hospital/hospital_bloc.dart';
import 'package:doc_online/userside/businessLogic/userprofile/user_profile_bloc.dart';
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
      BlocProvider.of<HospitalBloc>(context)
          .add(const HospitalEvent.getHospitalData());
      BlocProvider.of<DepartmentsBloc>(context)
          .add(const DepartmentsEvent.getDepartmentdata());

      BlocProvider.of<UserProfileBloc>(context)
          .add(const UserProfileEvent.getUserprofile());
    });
    return Scaffold(
      endDrawer: homeDrawer(context),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
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
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SearchScreen(),
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
            BlocBuilder<DepartmentsBloc, DepartmentsState>(
              builder: (context, state) {
                switch (state.departmentData.status) {
                  case ApiStatus.error:
                    return const SizedBox();
                  case ApiStatus.loading:
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  case ApiStatus.complete:
                    return SizedBox(
                      height: 170,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            state.departmentData.data!.departments!.length,
                        itemBuilder: (context, index) => departmentCard(
                            state
                                .departmentData.data!.departments![index].name!,
                            state.departmentData.data!.departments![index].id!,
                            context),
                      ),
                    );
                  default:
                    return const SizedBox();
                }
              },
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
                    BlocBuilder<HospitalBloc, HospitalState>(
                      builder: (context, state) {
                        switch (state.hospitalData.status) {
                          case ApiStatus.error:
                            return const SizedBox();
                          case ApiStatus.loading:
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          case ApiStatus.complete:
                            return GridView.builder(
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        childAspectRatio: (50 / 80)),
                                itemCount:
                                    state.hospitalData.data!.hospitals!.length,
                                itemBuilder: (context, index) {
                                  return hospitalCard(
                                    state.hospitalData.data!.hospitals![index],
                                    state
                                        .hospitalData
                                        .data!
                                        .rating![
                                            '${state.hospitalData.data!.hospitals![index].id}']!
                                        .round(),
                                    context,
                                  );
                                });
                          default:
                            return const SizedBox();
                        }
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
