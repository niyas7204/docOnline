import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../doctorside/presentation/core/widgets.dart';

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
                              separatorBuilder: (context, index) => space1h(),
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
