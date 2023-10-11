import 'package:doc_online/doctorside/bloc/doctor/log_in/doctor_bloc.dart';
import 'package:doc_online/userside/bussinesslogic/doctor/userside_bloc.dart';
import 'package:doc_online/userside/bussinesslogic/hospital/hospital_bloc.dart';

import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum EditType { doctor, hospital }

class AddRating extends StatelessWidget {
  final int rating;
  final String id;
  final String review;
  final EditType fieldtype;
  const AddRating(
      {super.key,
      required this.rating,
      required this.id,
      required this.review,
      required this.fieldtype});

  @override
  Widget build(BuildContext context) {
    HospitalBloc hospitalBloc = BlocProvider.of<HospitalBloc>(context);
    UsersideBloc doctorBloc = BlocProvider.of<UsersideBloc>(context);
    TextEditingController feedbackController =
        TextEditingController(text: review);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomTexts.text20('Add Rating'),
              SizedBox(
                height: 40,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 5,
                        ),
                    itemBuilder: (context, index) => IconButton(
                          onPressed: () {
                            fieldtype == EditType.doctor
                                ? doctorBloc.add(UsersideEvent.addFeedBack(
                                    rating: index + 1,
                                    doctorId: id,
                                    review: review))
                                : hospitalBloc.add(HospitalEvent.addFeedBack(
                                    rating: index + 1,
                                    doctorId: id,
                                    review: review));
                          },
                          icon: index < rating
                              ? const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 240, 183, 12),
                                )
                              : const Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 179, 178, 175),
                                ),
                        )),
              ),
              SpaceSized.space1h(),
              CustomTexts.text20('Add Feedback'),
              TextField(
                controller: feedbackController,
                maxLines: 3,
                style: const TextStyle(fontSize: 18),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      onPressed: () {
                        fieldtype == EditType.doctor
                            ? doctorBloc.add(UsersideEvent.addFeedBack(
                                rating: rating.toInt(),
                                doctorId: id,
                                review: feedbackController.text))
                            : hospitalBloc.add(HospitalEvent.addFeedBack(
                                rating: rating,
                                doctorId: id,
                                review: feedbackController.text));
                      },
                      child: const Text('submit')))
            ],
          ),
        ),
      ),
    );
  }
}
