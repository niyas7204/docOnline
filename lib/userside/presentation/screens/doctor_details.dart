import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/bussinesslogic/booking/booking_bloc.dart';
import 'package:doc_online/userside/bussinesslogic/doctor/userside_bloc.dart';

import 'package:doc_online/userside/presentation/widgets/widgets.dart';
import 'package:doc_online/userside/presentation/widgets/addrating.dart';

import 'package:doc_online/userside/presentation/widgets/book_diologue.dart';

import 'package:doc_online/userside/presentation/widgets/doctor_details.dart';
import 'package:doc_online/core/helpers/user_seide.dart';

import 'package:tuple/tuple.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        switch (state.doctorDetails.status) {
          case ApiStatus.error:
            return const SizedBox();
          case ApiStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ApiStatus.complete:
            return Scaffold(
                body: CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    sliverAppBar(
                        state.doctorDetails.data!.doctor!.image!.secureUrl!),
                    SliverPadding(
                      padding: const EdgeInsets.all(15),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            space1h(),
                            cText1(state.doctorDetails.data!.doctor!.name!),
                            cText1(state
                                .doctorDetails.data!.doctor!.qualification!),
                            cText1(state
                                .doctorDetails.data!.doctor!.department!.name!),
                            cText1(
                              state.doctorDetails.data!.doctor!.hospitalId!
                                  .name!,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Consultation Fee',
                              style: TextStyle(
                                color: Color.fromARGB(255, 130, 136, 151),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            cText1(
                              state.doctorDetails.data!.doctor!.fees!
                                  .toString(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            heading('Appointments Available'),
                            Builder(builder: (context) {
                              Tuple2<List, List> result = scheduleList(state);
                              List days = result.item1;
                              List slots = result.item2;
                              int count = 0;
                              for (List slot in slots) {
                                if (slot.isEmpty) {
                                  count++;
                                }
                              }

                              return count == 7
                                  ? const Center(
                                      child: Text(
                                        'Not Scheduled',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                            color: Colors.red),
                                      ),
                                    )
                                  : ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          space1h(),
                                      physics: const ScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: days.length,
                                      itemBuilder: (context, index) =>
                                          scheduleTile(
                                              slots[index], days[index]));
                            }),
                            const Text(
                              'Rating and Review',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            state.doctorDetails.data!.review != null
                                ? addRating(
                                    state.doctorDetails.data!.rating,
                                    context,
                                    state.doctorDetails.data!.review!.doctorId!,
                                    state.doctorDetails.data!.review!.review!,
                                    EditType.doctor)
                                : const SizedBox(),
                            Column(
                              children: [
                                state.doctorDetails.data!.reviews!.isNotEmpty
                                    ? ListView.separated(
                                        physics: const ScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: state.doctorDetails.data!
                                            .reviews!.length,
                                        separatorBuilder: (context, index) =>
                                            space1h(),
                                        itemBuilder: (context, index) => review(
                                            state.doctorDetails.data!
                                                .reviews![index].userId!.name!,
                                            state.doctorDetails.data!
                                                .reviews![index].rating!,
                                            state.doctorDetails.data!
                                                .reviews![index].review!))
                                    : const Center(
                                        child: Text(
                                          'No Review',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Colors.red),
                                        ),
                                      )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar: BottomAppBar(
                  child: Container(
                    height: 60,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                      color: Color.fromARGB(255, 219, 227, 235),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 45,
                          width: 160,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 164, 198, 226),
                              ),
                              onPressed: () {
                                BlocProvider.of<PatientBookingBloc>(context)
                                    .add(PatientBookingEvent.checkSlot(
                                        state: state));
                                showBookingDiologue(
                                    context,
                                    state.doctorDetails.data!.doctor!.fees!,
                                    state.doctorDetails.data!.doctor!.id!);
                              },
                              child: cText1('BookNow')),
                        )
                      ],
                    ),
                  ),
                ));
          default:
            return const SizedBox();
        }
      },
    );
  }
}
