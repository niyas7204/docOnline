import 'package:doc_online/userside/bussinesslogic/doctor/userside_bloc.dart';
import 'package:doc_online/userside/bussinesslogic/hospital/hospital_bloc.dart';
import 'package:doc_online/userside/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum EditType { doctor, hospital }

addRating(rating, BuildContext context, String id, String review,
    EditType fieldtype) {
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
            text20('Add Rating'),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 5,
                      ),
                  itemBuilder: (context, index) => index < rating
                      ? IconButton(
                          onPressed: () {
                            fieldtype == EditType.doctor
                                ? BlocProvider.of<UsersideBloc>(context).add(
                                    UsersideEvent.addFeedBack(
                                        rating: index + 1,
                                        doctorId: id,
                                        review: review))
                                : BlocProvider.of<HospitalBloc>(context).add(
                                    HospitalEvent.addFeedBack(
                                        rating: index + 1,
                                        doctorId: id,
                                        review: review));
                          },
                          icon: const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 240, 183, 12),
                          ),
                        )
                      : IconButton(
                          onPressed: () {
                            fieldtype == EditType.doctor
                                ? BlocProvider.of<UsersideBloc>(context).add(
                                    UsersideEvent.addFeedBack(
                                        rating: index + 1,
                                        doctorId: id,
                                        review: review))
                                : BlocProvider.of<HospitalBloc>(context).add(
                                    HospitalEvent.addFeedBack(
                                        rating: index + 1,
                                        doctorId: id,
                                        review: review));
                          },
                          icon: const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 179, 178, 175),
                          ),
                        )),
            ),
            space1h(),
            text20('Add Feedback'),
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
                          ? BlocProvider.of<UsersideBloc>(context).add(
                              UsersideEvent.addFeedBack(
                                  rating: rating,
                                  doctorId: id,
                                  review: feedbackController.text))
                          : BlocProvider.of<HospitalBloc>(context).add(
                              HospitalEvent.addFeedBack(
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
