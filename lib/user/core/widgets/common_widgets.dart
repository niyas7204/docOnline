import 'dart:js';

import 'package:doc_online/account_auth/signin/core/widgets.dart';
import 'package:doc_online/user/core/bloc/userside_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

departmentCard(String dpName, String id, context) {
  return GestureDetector(
    onTap: () {
      //BlocProvider.of<UsersideBloc>(context)
      //   .add(UsersideEvent.getDoctors(id: id));
    },
    child: Card(
      child: SizedBox(
        width: 105.w,
        height: 200.h,
        child: Column(
          children: [
            Image.asset('assets/image/stethoscope-icon-2316460_1280.png'),
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
  return Card(
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
            child: Image.network(
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
  );
}

doctersCard() {
  return Container(
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
          child: Image.asset(
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
              const Text(
                'Doctor Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              starRating(),
              const Text(
                'qualification',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Hopital Name',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
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

starRating() {
  return Row(
    children: [
      Icon(
        Icons.star,
        color: Colors.amber.shade600,
      ),
      Icon(
        Icons.star,
        color: Colors.amber.shade600,
      ),
      Icon(
        Icons.star,
        color: Colors.amber.shade600,
      ),
      Icon(
        Icons.star,
        color: Colors.amber.shade600,
      ),
      const Icon(
        Icons.star,
        color: Color.fromARGB(255, 219, 217, 217),
      ),
    ],
  );
}
