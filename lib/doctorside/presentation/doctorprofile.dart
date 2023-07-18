import 'package:doc_online/doctorside/bloc/bloc/doctor_profile_bloc.dart';
import 'package:doc_online/doctorside/data/data/data_providers/response/status.dart';
import 'package:doc_online/doctorside/presentation/core/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DoctorProfileBloc>(context)
        .add(const DoctorProfileEvent.getDoctorProfile());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: BlocBuilder<DoctorProfileBloc, DoctorProfileState>(
        builder: (context, state) {
          switch (state.profile.status) {
            case Status.loading:
              return const Center(child: CircularProgressIndicator());
            case Status.error:
              return const SizedBox();
            case Status.complete:
              return SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: NetworkImage(
                            state.profile.data!.doctor!.image!.secureUrl!),
                      ),

                      /// -- IMAGE

                      const SizedBox(height: 10),
                      text20(state.profile.data!.doctor!.name),
                      text20(state.profile.data!.doctor!.qualification),
                      const SizedBox(height: 20),

                      /// -- BUTTON
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: baseColor,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text('EditProfile',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Divider(),
                      const SizedBox(height: 10),

                      /// -- MENU

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
