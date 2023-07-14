import 'dart:developer';

import 'package:doc_online/account_auth/signin/presentation/login/screens/log_in.dart';
import 'package:doc_online/doctorside/bloc/doctor/docter_view/bloc/bookings_bloc.dart';
import 'package:doc_online/doctorside/data/data/data_providers/response/status.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';
import 'package:doc_online/doctorside/presentation/core/widgets.dart';
import 'package:doc_online/doctorside/presentation/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../account_auth/domain/authentication/email_auth.dart';

class DoctorHomeSc extends StatelessWidget {
  const DoctorHomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BookingsBloc>(context)
        .add(const BookingsEvent.getBookings());
    return BlocBuilder<BookingsBloc, BookingsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(132, 164, 135, 1),
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    logo(),
                    TextButton(
                        onPressed: () {
                          updateshredPreference('', false, false);
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                        },
                        child: const Text('logout')),
                    profile()
                  ],
                ),
                space1h(),
                space1h(),
                heading('Todays Appointments'),
                Builder(
                  builder: (context) {
                    log(state.bookings.status.toString());
                    switch (state.bookings.status) {
                      case Status.loading:
                        return const CircularProgressIndicator();

                      case Status.error:
                        return const SizedBox();

                      case Status.complete:
                        return Expanded(
                            child: ListView.separated(
                                itemBuilder: (context, index) => patientCard(
                                    state.bookings.data!.bookings!,
                                    index,
                                    context),
                                separatorBuilder: (context, index) => space1h(),
                                itemCount:
                                    state.bookings.data!.bookings!.length));
                      default:
                        return const SizedBox();
                    }
                  },
                ),
              ],
            ),
          )),
        );
      },
    );
  }
}
