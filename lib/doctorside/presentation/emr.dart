import 'package:doc_online/doctorside/bloc/bloc/emr_bloc.dart';
import 'package:doc_online/doctorside/data/data_providers/response/status.dart';
import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class EmrScreen extends StatelessWidget {
  final String bookingid;
  const EmrScreen({super.key, required this.bookingid});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<EmrBloc>(context)
        .add(EmrEvent.getEmr(bookingId: bookingid));
    return Scaffold(
      body: BlocBuilder<EmrBloc, EmrState>(
        builder: (context, state) {
          switch (state.emrDetails.status) {
            case Status.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case Status.error:
              return const SizedBox();
            case Status.complete:
              return state.emrDetails.data!.emr != null
                  ? Scaffold(
                      body: SafeArea(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            header1('Medical Report'),
                            space1h(),
                            text20(
                                'patient name:${state.emrDetails.data!.emr!.patientName!}'),
                            space1h(),
                            text20('Age:${state.emrDetails.data!.emr!.age!}'),
                            Expanded(
                                child: Container(
                              width: double.infinity,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    text20('Prescription'),
                                  ],
                                ),
                              ),
                            ))
                          ],
                        ),
                      )),
                    )
                  : Center(
                      child: text20('Emr not avaiable'),
                    );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
