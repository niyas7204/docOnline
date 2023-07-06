import 'package:doc_online/bloc/user_side/userside_bloc.dart';
import 'package:doc_online/model/user_side/schedule/doctor_schedule.dart';
import 'package:doc_online/ui/core/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

sliverAppBar() {
  return SliverAppBar(
    expandedHeight: 300.h,
    flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
      'assets/image/doctor1.jpg',
      fit: BoxFit.cover,
    )),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: Container(
        width: double.infinity,
        height: 20,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: Center(
          child: Container(
            width: 50,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(75, 158, 158, 158)),
          ),
        ),
      ),
    ),
  );
}

scheduleTile(List<Mon> time, String day) {
  return time.isNotEmpty
      ? Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 139, 158, 192),
          child: Column(
            children: [
              cText1(day),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: time.length,
                  itemBuilder: (context, index) => Container(
                        color: const Color.fromARGB(255, 176, 186, 202),
                        child: Row(
                          children: [
                            heading(
                                ' start time ${time[index].startDate!.hour}:${time[index].endDate!.minute}'),
                            heading(
                                ' end time ${time[index].endDate!.hour}:${time[index].endDate!.minute}'),
                          ],
                        ),
                      )),
            ],
          ))
      : SizedBox();
}
