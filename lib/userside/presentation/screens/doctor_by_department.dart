import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/bussinesslogic/doctor/userside_bloc.dart';
import 'package:doc_online/userside/presentation/widgets/common_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/widgets.dart';

class ByDepartment extends StatelessWidget {
  final String id;
  const ByDepartment({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<UsersideBloc>(context)
          .add(UsersideEvent.getByDepartmentDoctors(id: id));
    });
    return BlocBuilder<UsersideBloc, UsersideState>(
      builder: (context, state) {
        final bstate = state.doctorData;
        switch (state.doctorData.status) {
          case ApiStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case ApiStatus.error:
            return const SizedBox();
          case ApiStatus.complete:
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 104, 146, 138),
                title: const Text(
                  'Doctors',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      bstate.data!.doctors!.isNotEmpty
                          ? Expanded(
                              child: ListView.separated(
                              separatorBuilder: (context, index) => space1h(),
                              itemCount: bstate.data!.doctors!.length,
                              itemBuilder: (context, index) => doctersCard(
                                  bstate.data!.doctors!, index, context),
                            ))
                          : Center(
                              child: errorText("No doctors found"),
                            ),
                    ],
                  ),
                ),
              ),
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
