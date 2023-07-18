import 'package:doc_online/doctorside/data/data/data_providers/response/status.dart';
import 'package:doc_online/doctorside/presentation/core/widgets.dart';
import 'package:doc_online/userside/businessLogic/bloc/booking_bloc.dart';

import 'package:doc_online/userside/data/model/check_time_model.dart';

import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showBookingDiologue(BuildContext context, int fees) {
  return showDialog(
    context: context,
    builder: (context) {
      return BlocBuilder<PatientBookingBloc, PatientBookingState>(
        builder: (context, state) {
          switch (state.scheduleList!.status) {
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Status.error:
              return SizedBox(
                child: Center(
                  child: text20('error'),
                ),
              );
            case Status.complete:
              return diologue(state.scheduleList!.data!,
                  state.selectedDateIndex, state.selectedTimeIndex, fees);
            default:
              return SizedBox(
                child: Center(
                  child: text20('error'),
                ),
              );
          }
        },
      );
    },
  );
}

diologue(
    List<Result>? state, int? isdateSeleted, int? istimeSelected, int fee) {
  return Dialog(
    backgroundColor: const Color.fromARGB(255, 101, 131, 146).withOpacity(.9),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Book Now',
                style: TextStyle(
                  color: Color.fromARGB(255, 9, 22, 99),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            space1h(),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Appoint Availble',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            space1h(),
            Flexible(
              flex: 1,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: state!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 6 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) =>
                    timeTable(state[index].date!, index),
              ),
            ),
            space1h(),
            isdateSeleted == null
                ? const SizedBox()
                : const Text(
                    'time',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            space1h(),
            isdateSeleted != null
                ? Flexible(
                    flex: 1,
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: state[isdateSeleted].schedule!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 6 / 1,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, index) => timeSchedule(
                        state[index].schedule![index],
                        istimeSelected,
                        index,
                      ),
                    ),
                  )
                : const SizedBox(),
            space1h(),
            const Text(
              'Fee',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              fee.toString(),
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(7)),
                height: 40.h,
                width: 300.w,
                child: TextFormField(
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: 'Name'),
                )),
            space1h(),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(7)),
                height: 40.h,
                width: 300.w,
                child: TextFormField(
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: 'Age'),
                )),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: 45,
                width: 160,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 164, 198, 226),
                    ),
                    onPressed: () {},
                    child: cText1('BookNow')),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

timeSchedule(Schedule time, int? timeSelected, int index) {
  var startTime = DateTime.parse(time.startDate!);
  return BlocBuilder<PatientBookingBloc, PatientBookingState>(
    builder: (context, state) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: state.selectedTimeIndex == null
              ? Colors.white
              : state.selectedTimeIndex == index
                  ? const Color.fromARGB(255, 52, 150, 230)
                  : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Text(
              "start time ${startTime.hour}:${startTime.minute}",
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            space1w(),
            space1w(),
            Text(
              "end time ${time.endDate!.hour}:${time.endDate!.minute}",
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    },
  );
}
