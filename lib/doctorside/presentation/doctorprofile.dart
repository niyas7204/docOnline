import 'dart:convert';
import 'dart:typed_data';

import 'package:doc_online/authentication/user/presentaion/log_in.dart';
import 'package:doc_online/core/shared_preferences.dart';
import 'package:doc_online/doctorside/bloc/profile/doctorprofileresponse_bloc.dart';
import 'package:doc_online/core/responsehandler/status.dart';

import 'package:doc_online/components/rating_review.dart/review.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DoctorprofileresponseBloc>(context)
        .add(const DoctorprofileresponseEvent.getDoctorProfile());
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Profile',
          ),
          actions: [
            TextButton(
                onPressed: () {
                  updateshredPreference('', false, false);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Login(),
                  ));
                },
                child: const Text(
                  'logout',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                )),
          ]),
      body: BlocBuilder<DoctorprofileresponseBloc, DoctorprofileresponseState>(
        builder: (context, state) {
          switch (state.profile.status) {
            case ApiStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case ApiStatus.error:
              return const SizedBox();
            case ApiStatus.complete:
              var profile = state.profile.data!;
              return SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                                state.profile.data!.doctor!.image!.secureUrl!),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: IconButton(
                              onPressed: () {
                                BlocProvider.of<DoctorprofileresponseBloc>(
                                        context)
                                    .add(const DoctorprofileresponseEvent
                                        .addDoctorProfile());
                              },
                              icon: const Icon(
                                Icons.camera_alt_sharp,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      CustomTexts.text20(state.profile.data!.doctor!.name),
                      CustomTexts.text20(
                          state.profile.data!.doctor!.qualification),
                      const SizedBox(height: 20),
                      const SizedBox(height: 30),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomTexts.commonText1('Rating and Reviews'),
                      ),
                      const SizedBox(height: 10),
                      ListView.separated(
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.profile.data!.reviews!.length,
                          separatorBuilder: (context, index) =>
                              SpaceSized.space1h,
                          itemBuilder: (context, index) => ViewReview(
                              profile: profile.reviews![index].userId!.name!,
                              rating: profile.reviews![index].rating!,
                              review: profile.reviews![index].review!)),
                      const Divider(),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}

Future<String> pickProfile() async {
  XFile? pickedFile =
      await ImagePicker().pickImage(source: ImageSource.gallery);
  Uint8List imageBytes = await pickedFile!.readAsBytes();
  String baseImage = base64Encode(imageBytes);
  String imageUri = 'data:image/png;base64,$baseImage';
  return imageUri;
}
