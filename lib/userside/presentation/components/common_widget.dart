import 'package:doc_online/userside/bussinesslogic/booking/booking_bloc.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

timeTable(DateTime day, int index) {
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

starRating(int rating) {
  return SizedBox(
    height: 20,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) => index < rating
          ? const Icon(
              Icons.star,
              color: Colors.amber,
            )
          : const Icon(
              Icons.star,
              color: Color.fromARGB(255, 179, 178, 175),
            ),
    ),
  );
}
