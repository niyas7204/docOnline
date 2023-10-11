import 'package:doc_online/userside/bussinesslogic/booking/booking_bloc.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class DateAndTime extends StatelessWidget {
  final DateTime day;
  final int index;
  const DateAndTime({super.key, required this.day, required this.index});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientBookingBloc, PatientBookingState>(
      builder: (context, state) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: state.selectedDateIndex == null
                ? Colors.white
                : state.selectedDateIndex == index
                    ? const Color.fromARGB(255, 52, 150, 230)
                    : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          onPressed: () {
            BlocProvider.of<PatientBookingBloc>(context)
                .add(PatientBookingEvent.checkDateselection(index: index));
          },
          child: Text(
            "${day.day}/${day.month}/${day.year}",
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
