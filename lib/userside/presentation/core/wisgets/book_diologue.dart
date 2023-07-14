import 'package:doc_online/doctorside/presentation/core/widgets.dart';

import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showBookingDiologue(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor:
            const Color.fromARGB(255, 101, 131, 146).withOpacity(.9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
          width: 350.w,
          height: 450.h,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
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
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: (20 / 8),
                  children: [
                    timeTable(),
                    timeTable(),
                    timeTable(),
                    timeTable(),
                    timeTable(),
                    timeTable(),
                    timeTable(),
                  ],
                ),
                space1h(),
                const Text(
                  'time',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Fee',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  '250',
                  style: TextStyle(
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
              ],
            ),
          ),
        ),
      );
    },
  );
}
