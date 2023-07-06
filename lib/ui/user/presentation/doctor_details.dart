import 'dart:developer';

import 'package:doc_online/ui/core/widgets.dart';
import 'package:doc_online/ui/user/core/widgets/book_diologue.dart';
import 'package:doc_online/ui/user/core/widgets/common_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doc_online/bloc/user_side/userside_bloc.dart';

import '../core/widgets/doctor_details.dart';

class DoctorDetails extends StatelessWidget {
  final String doctorId;
  const DoctorDetails({super.key, required this.doctorId});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final userBloc = BlocProvider.of<UsersideBloc>(context);
      userBloc.add(UsersideEvent.getDoctor(
        dId: doctorId,
      ));
      userBloc.add(UsersideEvent.getDoctorSchedule(dId: doctorId));
    });
    return BlocBuilder<UsersideBloc, UsersideState>(
      builder: (context, state) {
        /*  List schedule = [
          state.schedule!.schedule!.sun!,
          state.schedule!.schedule!.mon!,
          state.schedule!.schedule!.tue!,
          state.schedule!.schedule!.wed!,
          state.schedule!.schedule!.thu!,
          state.schedule!.schedule!.fri!,
          state.schedule!.schedule!.sat!,
        ];
        List days = [
          'sunday',
          'monday',
          'tuesday',
          'wedndesday',
          'thusrsday',
          'friday',
          'saterday'
        ];*/
        return Scaffold(
            body: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.doctorDetails == null || state.schedule == null
                    ? const SizedBox()
                    : CustomScrollView(
                        shrinkWrap: true,
                        slivers: [
                          sliverAppBar(),
                          SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                space1(),
                                Padding(
                                  padding: const EdgeInsets.all(14),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      cText1(
                                          state.doctorDetails!.doctor!.name!),
                                      cText1(state.doctorDetails!.doctor!
                                          .qualification!),
                                      cText1('general Department'),
                                      cText1(
                                        state.doctorDetails!.doctor!.hospitalId!
                                            .name!,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'Consultation Fee',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 130, 136, 151),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      cText1(
                                        state.doctorDetails!.doctor!.fees!
                                            .toString(),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      heading('Appointments Available'),
                                      /* ListView.separated(
                                        separatorBuilder: (context, index) =>
                                            space1(),
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: days.length,
                                        itemBuilder: (context, index) =>
                                            scheduleTile(
                                                schedule[index], days[index]),
                                      ),*/
                                      Padding(
                                        padding: const EdgeInsets.all(14),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Rating and Review',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
            bottomNavigationBar: BottomAppBar(
              child: Container(
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  color: Color.fromARGB(255, 219, 227, 235),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 160,
                      height: 45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 164, 198, 226),
                          ),
                          onPressed: () {},
                          child: cText1('Chat')),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 45,
                      width: 160,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 164, 198, 226),
                          ),
                          onPressed: () {
                            showBookingDiologue(context);
                          },
                          child: cText1('BookNow')),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
