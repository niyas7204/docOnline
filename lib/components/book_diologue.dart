import 'package:doc_online/components/booking/booking_diologe.dart';
import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/bussinesslogic/booking/booking_bloc.dart';
import 'package:doc_online/userside/data/model/booking/check_time_model.dart';

import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

showBookingDiologue(BuildContext context, int fees, String doctorId) {
  return showDialog(
    context: context,
    builder: (context) {
      return BlocBuilder<PatientBookingBloc, PatientBookingState>(
        builder: (context, state) {
          switch (state.scheduleList!.status) {
            case ApiStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ApiStatus.error:
              return SizedBox(
                child: Center(
                  child: CustomTexts.text20('error'),
                ),
              );
            case ApiStatus.complete:
              return diologue(
                  state.scheduleList!.data!,
                  state.selectedDateIndex,
                  state.selectedTimeIndex,
                  fees,
                  context,
                  doctorId);
            default:
              return SizedBox(
                child: Center(
                  child: CustomTexts.text20('error'),
                ),
              );
          }
        },
      );
    },
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
        onPressed: () {
          BlocProvider.of<PatientBookingBloc>(context)
              .add(PatientBookingEvent.checkTimeselection(timeindex: index));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "start time ${startTime.hour}:${startTime.minute}",
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SpaceSized.space1h,
            SpaceSized.space1h,
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

void popPage(BuildContext context) {
  Navigator.of(context).pop();
}
