import 'package:doc_online/userside/presentation/components/widgets.dart';
import 'package:doc_online/userside/presentation/components/common_widget.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart' as prefix;

import '../../data/model/schedule/doctor_schedule.dart';

sliverAppBar(String imgUrl) {
  return SliverAppBar(
    expandedHeight: 350,
    flexibleSpace: FlexibleSpaceBar(
        background: prefix.Image.network(
      imgUrl,
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
  return Builder(builder: (context) {
    return time.isNotEmpty
        ? Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 139, 158, 192),
            child: Column(
              children: [
                CustomTexts.commonText1(day),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: time.length,
                    itemBuilder: (context, index) => Container(
                          height: 40,
                          color: const Color.fromARGB(255, 176, 186, 202),
                          child: Center(
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 5,
                                  left: 10,
                                  child: CustomTexts.text20(
                                      ' Start Time ${time[index].startDate!.hour}:${time[index].endDate!.minute}'),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 10,
                                  child: CustomTexts.text20(
                                      ' End Time ${time[index].endDate!.hour}:${time[index].endDate!.minute}'),
                                ),
                              ],
                            ),
                          ),
                        )),
              ],
            ))
        : const SizedBox();
  });
}

review(String profile, int rating, String review) {
  return Container(
    width: double.infinity,
    height: 100,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 231, 233, 236),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            child: Icon(Icons.person_2_sharp),
          ),
          SpaceSized.space1h(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTexts.text20(profile),
              starRating(rating),
              CustomTexts.text20(review),
            ],
          )
        ],
      ),
    ),
  );
}