import 'package:doc_online/core/helpers/enum.dart';
import 'package:doc_online/doctorside/data/model/bookingsmodel.dart';
import 'package:doc_online/doctorside/presentation/emr.dart';
import 'package:doc_online/components/widgets.dart';
import 'package:flutter/material.dart';

patientCard(List<Booking> state, int index, BuildContext context,
    AppointmentSelection selection) {
  return GestureDetector(
    child: Container(
      height: 160,
      width: 340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 101, 131, 146).withOpacity(.8)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "PatientName :${state[index].patientName![0].toUpperCase() + state[index].patientName!.substring(1)}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                selection != AppointmentSelection.upcoming
                    ? TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EmrScreen(
                              booking: state[index],
                              selection: selection,
                            ),
                          ));
                        },
                        child: const Text(
                          "EMR",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: baseColor),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            Text(
              "Token  :${state[index].token!}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Date  :${state[index].date!.day}/${state[index].date!.month}/${state[index].date!.year}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Time :${state[index].time!.hour}:${state[index].time!.minute}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
