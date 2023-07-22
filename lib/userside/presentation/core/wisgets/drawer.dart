import 'package:doc_online/core/authentication/email_auth.dart';
import 'package:doc_online/account_auth/presentaion/log_in.dart';
import 'package:doc_online/doctorside/data/data_providers/response/status.dart';
import 'package:doc_online/userside/businessLogic/bloc/user_profile_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

homeDrawer(BuildContext context) {
  return Drawer(
    child: BlocBuilder<UserProfileBloc, UserProfileState>(
      builder: (context, state) {
        switch (state.userProfile.status) {
          case Status.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case Status.error:
            return const SizedBox();
          case Status.complete:
            return ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              state.userProfile.data!.user!.picture!))),
                  child: Text(
                    state.userProfile.data!.user!.name!,
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text('edit profile'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text('Bookings'),
                  onTap: () => {},
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
