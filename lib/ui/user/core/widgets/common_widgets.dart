import 'dart:developer';

import 'package:doc_online/model/user_side/doctors/doctors.dart';
import 'package:doc_online/ui/core/widgets.dart';

import 'package:doc_online/ui/user/core/data_service/user_seide.dart';
import 'package:doc_online/ui/user/presentation/doctors_list.dart';
import 'package:doc_online/ui/user/presentation/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as prefix;

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

hospitalCard(String name, String url, String adress) {
  return GestureDetector(
    onTap: () {},
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
            space1(),
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

doctersCard(List<Doctor> bstate, int index, BuildContext context) {
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

Container timeTable() {
  return Container(
    height: 40.h,
    width: 100.w,
    decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 2),
        borderRadius: BorderRadius.circular(12)),
    child: const Center(
      child: Text(
        '26/05/2023',
        style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

starRating(int rating) {
  return Row(
    children: [
      Expanded(
        child: ListView.builder(
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
    ],
  );
}
