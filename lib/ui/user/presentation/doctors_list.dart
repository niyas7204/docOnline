import 'dart:developer';

import 'package:doc_online/ui/core/widgets.dart';
import 'package:doc_online/ui/user/core/widgets/common_widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doc_online/bloc/user_side/userside_bloc.dart';

class ByDepartment extends StatelessWidget {
  final String id;
  const ByDepartment({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<UsersideBloc>(context)
          .add(UsersideEvent.getDoctors(id: id));
    });
    return BlocBuilder<UsersideBloc, UsersideState>(
      builder: (context, state) {
        final bstate = state.doctorData;
        return Scaffold(
          body: state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.doctorData == null
                  ? const SizedBox()
                  : SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            const Text(
                              'Doctors',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(
                                child: ListView.separated(
                              separatorBuilder: (context, index) => space1(),
                              itemCount: bstate!.doctors!.length,
                              itemBuilder: (context, index) =>
                                  doctersCard(bstate.doctors!, index, context),
                            )),
                          ],
                        ),
                      ),
                    ),
        );
      },
    );
  }
}
