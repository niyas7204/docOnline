import 'package:doc_online/core/authentication/email_auth.dart';
import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/account_auth/presentaion/log_in.dart';
import 'package:doc_online/userside/bussinesslogic/userprofile/user_profile_bloc.dart';
import 'package:doc_online/userside/presentation/screens/bokkings.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

homeDrawer(BuildContext context) {
  return Drawer(
    child: BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        switch (state.userProfile.status) {
          case ApiStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ApiStatus.error:
            return const SizedBox();
          case ApiStatus.complete:
            return ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.userProfile.data!.user!.name!,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
                      ),
                      Text(
                        state.userProfile.data!.user!.email!,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.bookmark_add_outlined),
                  title: const Text('Bookings'),
                  onTap: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BookingDetails()))
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text('Logout'),
                  onTap: () {
                    updateshredPreference('', false, false);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
                  },
                ),
              ],
            );
          default:
            return const SizedBox();
        }
      },
    ),
  );
}
