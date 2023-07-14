import 'package:doc_online/doctorside/presentation/core/widgets.dart';
import 'package:doc_online/userside/presentation/core/wisgets/book_diologue.dart';

import 'package:doc_online/userside/presentation/core/wisgets/doctor_details.dart';
import 'package:doc_online/userside/presentation/functions/user_seide.dart';
import 'package:doc_online/userside/presentation/screens/chat.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';

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
        return Scaffold(
            body: state.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.doctorDetails != null && state.schedule != null
                    ? CustomScrollView(
                        shrinkWrap: true,
                        slivers: [
                          sliverAppBar(
                              state.doctorDetails!.doctor!.image!.secureUrl!),
                          SliverList(
                            delegate: SliverChildListDelegate(
                              [
                                space1h(),
                                cText1(state.doctorDetails!.doctor!.name!),
                                cText1(state
                                    .doctorDetails!.doctor!.qualification!),
                                cText1(state
                                    .doctorDetails!.doctor!.department!.name!),
                                cText1(
                                  state
                                      .doctorDetails!.doctor!.hospitalId!.name!,
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
                                  state.doctorDetails!.doctor!.fees!.toString(),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                heading('Appointments Available'),
                                Builder(builder: (context) {
                                  Tuple2<List, List> result =
                                      scheduleList(state);
                                  List days = result.item1;
                                  List slots = result.item2;
                                  int count = 0;
                                  for (List slot in slots) {
                                    if (slot.isEmpty) {
                                      count++;
                                    }
                                  }

                                  return count == 7
                                      ? const SizedBox()
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
                                Column(
                                  children: [
                                    state.doctorDetails!.reviews!.isNotEmpty
                                        ? ListView.separated(
                                            physics: const ScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: state
                                                .doctorDetails!.reviews!.length,
                                            separatorBuilder:
                                                (context, index) => space1h(),
                                            itemBuilder: (context, index) =>
                                                review(
                                                    state
                                                        .doctorDetails!
                                                        .reviews![index]
                                                        .userId!
                                                        .name!,
                                                    state
                                                        .doctorDetails!
                                                        .reviews![index]
                                                        .rating!,
                                                    state
                                                        .doctorDetails!
                                                        .reviews![index]
                                                        .review!))
                                        : header1('no review')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
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
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ChatScreen(),
                            ));
                          },
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
