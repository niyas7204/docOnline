import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/bussinesslogic/booking/booking_bloc.dart';
import 'package:doc_online/userside/bussinesslogic/doctor/userside_bloc.dart';
import 'package:doc_online/components/rating_review.dart/review.dart';

import 'package:doc_online/components/rating_review.dart/addrating.dart';

import 'package:doc_online/components/book_diologue.dart';

import 'package:doc_online/components/doctor_details.dart';
import 'package:doc_online/core/helpers/user_seide.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';

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
        var doctorDetails = state.doctorDetails.data!;
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
                    sliverAppBar(doctorDetails.doctor!.image!.secureUrl!),
                    SliverPadding(
                      padding: const EdgeInsets.all(15),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            SpaceSized.space1h,
                            CustomTexts.commonText1(
                                doctorDetails.doctor!.name!),
                            CustomTexts.commonText1(state
                                .doctorDetails.data!.doctor!.qualification!),
                            CustomTexts.commonText1(state
                                .doctorDetails.data!.doctor!.department!.name!),
                            CustomTexts.commonText1(
                              doctorDetails.doctor!.hospitalId!.name!,
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
                            CustomTexts.commonText1(
                              doctorDetails.doctor!.fees!.toString(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTexts.commonText1('Appointments Available'),
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
                                          SpaceSized.space1h,
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
                            doctorDetails.review != null
                                ? AddRating(
                                    rating: doctorDetails.rating!,
                                    id: doctorDetails.review!.doctorId!,
                                    review: doctorDetails.review!.review!,
                                    fieldtype: EditType.doctor)
                                : const SizedBox(),
                            Column(
                              children: [
                                doctorDetails.reviews!.isNotEmpty
                                    ? ListView.separated(
                                        physics: const ScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: state.doctorDetails.data!
                                            .reviews!.length,
                                        separatorBuilder: (context, index) =>
                                            SpaceSized.space1h,
                                        itemBuilder:
                                            (context, index) =>
                                                ViewReview(
                                                    profile: doctorDetails
                                                        .reviews![index]
                                                        .userId!
                                                        .name!,
                                                    rating: doctorDetails
                                                        .reviews![index]
                                                        .rating!,
                                                    review: doctorDetails
                                                        .reviews![index]
                                                        .review!))
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
                                    doctorDetails.doctor!.fees!,
                                    doctorDetails.doctor!.id!);
                              },
                              child: CustomTexts.commonText1('BookNow')),
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
