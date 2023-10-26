import 'package:doc_online/core/helpers/enum.dart';
import 'package:doc_online/doctorside/bloc/bloc/emr_bloc.dart';
import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/doctorside/data/model/bookingsmodel.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class EmrScreen extends StatelessWidget {
  final Booking booking;
  final AppointmentSelection selection;
  const EmrScreen({super.key, required this.booking, required this.selection});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<EmrBloc>(context)
        .add(EmrEvent.getEmr(bookingId: booking.id!));
    return Scaffold(
      body: BlocBuilder<EmrBloc, EmrState>(
        builder: (context, state) {
          switch (state.emrDetails.status) {
            case ApiStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ApiStatus.error:
              return const SizedBox();
            case ApiStatus.complete:
              return selection == AppointmentSelection.today ||
                      selection == AppointmentSelection.completed
                  ? Builder(builder: (context) {
                      TextEditingController prescriptionController =
                          TextEditingController();
                      if (selection == AppointmentSelection.completed) {
                        state.emrDetails.data!.emr != null
                            ? prescriptionController = TextEditingController(
                                text: state.emrDetails.data!.emr!.prescription)
                            : TextEditingController(
                                text: 'No Prescription available');
                      }
                      return Scaffold(
                        appBar: AppBar(
                          backgroundColor:
                              const Color.fromARGB(255, 116, 184, 193)
                                  .withOpacity(.1),
                          title: CustomTexts.header1('Medical Report'),
                        ),
                        body: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://www.globalgovernmentforum.com/wp-content/uploads/The-doctor-will-see-you-now-webinar-picture-620x414.jpg"),
                                  fit: BoxFit.cover)),
                          child: SafeArea(
                              child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SpaceSized.space1h,
                                CustomTexts.text20(
                                    'Patient Name:${booking.patientName!}'),
                                SpaceSized.space1h,
                                CustomTexts.text20('Age:${booking.age!}'),
                                SpaceSized.space1h,
                                CustomTexts.text20(
                                    'Date:${booking.date!.day}/${booking.date!.month}/${booking.date!.year}'),
                                SpaceSized.space1h,
                                state.emrDetails.data!.emr != null
                                    ? state.emrDetails.data!.emr!.prescription!
                                            .isEmpty
                                        ? CustomTexts.errorText(
                                            'Prescription not added.')
                                        : buildTextField('Medication Details',
                                            context, selection,
                                            maxLines: 10,
                                            readOnly: !state.editEmr,
                                            controller: prescriptionController)
                                    : CustomTexts.errorText(
                                        'Prescription not added.'),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: selection == AppointmentSelection.today
                                      ? ElevatedButton(
                                          onPressed: state.editEmr
                                              ? () {
                                                  BlocProvider.of<EmrBloc>(context)
                                                      .add(EmrEvent.addEmr(
                                                          userId: state
                                                              .emrDetails
                                                              .data!
                                                              .emr!
                                                              .userId!,
                                                          bookingId: state
                                                              .emrDetails
                                                              .data!
                                                              .emr!
                                                              .bookingId!,
                                                          prescription:
                                                              prescriptionController
                                                                  .text,
                                                          patientName: state
                                                              .emrDetails
                                                              .data!
                                                              .emr!
                                                              .patientName!,
                                                          age: state.emrDetails
                                                              .data!.emr!.age!,
                                                          weight: state
                                                              .emrDetails
                                                              .data!
                                                              .emr!
                                                              .weight!,
                                                          gender: state
                                                              .emrDetails
                                                              .data!
                                                              .emr!
                                                              .gender!));
                                                }
                                              : null,
                                          child: CustomTexts.text20('Submit'))
                                      : const SizedBox(),
                                )
                              ],
                            ),
                          )),
                        ),
                      );
                    })
                  : Center(
                      child: CustomTexts.text20('Emr not avaiable'),
                    );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }

  Widget buildTextField(
      String label, BuildContext context, AppointmentSelection selection,
      {int? maxLines, bool? readOnly, TextEditingController? controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTexts.labelText("label"),
            selection == AppointmentSelection.today
                ? IconButton(
                    onPressed: () {
                      BlocProvider.of<EmrBloc>(context)
                          .add(const EmrEvent.enableEdit());
                    },
                    icon: const Icon(Icons.edit))
                : const SizedBox()
          ],
        ),
        TextField(
          controller: controller,
          readOnly: readOnly!,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          maxLines: maxLines,
        ),
      ],
    );
  }
}
