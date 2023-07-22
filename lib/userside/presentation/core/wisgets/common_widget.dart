import 'dart:developer';

import 'package:doc_online/userside/presentation/core/widgets.dart';

import 'package:doc_online/userside/businessLogic/booking/booking_bloc.dart';
import 'package:doc_online/userside/data/model/doctors/doctors.dart';

import 'package:doc_online/userside/presentation/screens/doctor_by_department.dart';
import 'package:doc_online/userside/presentation/screens/doctor_details.dart';
import 'package:doc_online/userside/presentation/screens/hospital_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as prefix;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

departmentCard(String dpName, String id, context) {
  return GestureDetector(
    onTap: () async {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ByDepartment(id: id)));
    },
    child: Card(
      child: SizedBox(
        width: 105.w,
        height: 200.h,
        child: Column(
          children: [
            prefix.Image.asset(
                'assets/image/stethoscope-icon-2316460_1280.png'),
            Center(
              child: SizedBox(
                width: 100.w,
                child: Text(
                  dpName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

hospitalCard(
    String name, String url, String adress, BuildContext context, String id) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HospitalDetails(
                hospitalId: id,
              )));
    },
    child: Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: SizedBox(
        height: 220.h,
        width: 166.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: prefix.Image.network(
                url,
                fit: BoxFit.cover,
                width: 166.w,
                height: 120.h,
              ),
            ),
            space1h(),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star)
                    ],
                  ),
                  Text(
                    adress,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

doctersCard(List<Doctors> bstate, int index, BuildContext context) {
  return GestureDetector(
    onTap: () async {
      log('on tap ${bstate[index].id!}');
      log('on tap ${bstate[index].name!}');

      // await apiCall(bstate[index].id!, context);

      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DoctorDetails(doctorId: bstate[index].id!)));
    },
    child: Container(
      height: 95.h,
      width: 340.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 101, 131, 146)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: prefix.Image.asset(
              'assets/image/doctor.png',
              fit: BoxFit.cover,
              width: 100.w,
              height: 80.h,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bstate[index].name!,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bstate[index].qualification!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  bstate[index].hospitalId!.name!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

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
    child: Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => index <= rating
            ? const Icon(
                Icons.star,
                color: Colors.amber,
              )
            : const Icon(
                Icons.star,
                color: Color.fromARGB(255, 179, 178, 175),
              ),
      ),
    ),
  );
}
