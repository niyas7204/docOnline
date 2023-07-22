import 'package:doc_online/account_auth/presentaion/log_in.dart';
import 'package:doc_online/core/authentication/email_auth.dart';
import 'package:doc_online/doctorside/bloc/profile/doctorprofileresponse_bloc.dart';
import 'package:doc_online/doctorside/data/data_providers/response/status.dart';
import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:doc_online/userside/presentation/core/wisgets/doctor_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  style: TextStyle(color: Colors.white),
                )),
          ]),
      body: BlocBuilder<DoctorprofileresponseBloc, DoctorprofileresponseState>(
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

                      const SizedBox(height: 10),
                      ListView.separated(
                          physics: const ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.profile.data!.reviews!.length,
                          separatorBuilder: (context, index) => space1h(),
                          itemBuilder: (context, index) => review(
                              state.profile.data!.reviews![index].userId!.name!,
                              state.profile.data!.reviews![index].rating!,
                              state.profile.data!.reviews![index].review!)),

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
