import 'package:doc_online/ui/core/widgets.dart';
import 'package:doc_online/ui/user/core/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookNow extends StatelessWidget {
  const BookNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Book Now',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            space1(),
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
            space1(),
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
            space1(),
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
                color: Color.fromARGB(255, 80, 79, 79),
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
            space1(),
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
      )),
    );
  }
}
