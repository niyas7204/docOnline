import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/presentation/core/widgets.dart';
import 'package:doc_online/userside/businessLogic/booking/booking_bloc.dart';
import 'package:doc_online/userside/businessLogic/paymet/payment_bloc.dart';

import 'package:doc_online/userside/data/model/booking/check_time_model.dart';

import 'package:doc_online/userside/data/repository/payment_handler.dart';

import 'package:doc_online/userside/presentation/core/wisgets/common_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

showBookingDiologue(BuildContext context, int fees, String doctorId) {
  return showDialog(
    context: context,
    builder: (context) {
      return BlocBuilder<PatientBookingBloc, PatientBookingState>(
        builder: (context, state) {
          switch (state.scheduleList!.status) {
            case ApiStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ApiStatus.error:
              return SizedBox(
                child: Center(
                  child: text20('error'),
                ),
              );
            case ApiStatus.complete:
              return diologue(
                  state.scheduleList!.data!,
                  state.selectedDateIndex,
                  state.selectedTimeIndex,
                  fees,
                  context,
                  doctorId);
            default:
              return SizedBox(
                child: Center(
                  child: text20('error'),
                ),
              );
          }
        },
      );
    },
  );
}

diologue(List<Result>? scheduleList, int? isdateSeleted, int? istimeSelected,
    int fee, context, String doctorId) {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  bool isPaymentCall = false;
  return Dialog(
    backgroundColor: const Color.fromARGB(255, 101, 131, 146).withOpacity(.9),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Book Now',
                style: TextStyle(
                  color: Color.fromARGB(255, 9, 22, 99),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            space1h(),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Appoint Availble',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            space1h(),
            Flexible(
              flex: 1,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: scheduleList!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 6 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) =>
                    timeTable(scheduleList[index].date!, index),
              ),
            ),
            space1h(),
            isdateSeleted == null
                ? const SizedBox()
                : const Text(
                    'time',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
            space1h(),
            isdateSeleted != null
                ? Flexible(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: scheduleList[isdateSeleted].schedule!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 6 / 1,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 10),
                      itemBuilder: (context, index) => timeSchedule(
                        scheduleList[isdateSeleted].schedule![index],
                        istimeSelected,
                        index,
                      ),
                    ),
                  )
                : const SizedBox(),
            space1h(),
            const Text(
              'Fee',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              fee.toString(),
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(7)),
                height: 40.h,
                width: 300.w,
                child: TextFormField(
                  controller: nameController,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: 'Name'),
                )),
            space1h(),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(7)),
                height: 40.h,
                width: 300.w,
                child: TextFormField(
                  controller: ageController,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.left,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20),
                      hintText: 'Age'),
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: SizedBox(
                    height: 45,
                    width: 140,
                    child: BlocListener<PaymentBloc, PaymentState>(
                      listener: (context, state) async {
                        if (state.orderResponse!.status == ApiStatus.complete &&
                            !isPaymentCall) {
                          isPaymentCall = true;

                          return await getRazorPay(
                              context,
                              fee,
                              state.orderResponse!.data!.order!,
                              nameController.text,
                              int.parse(ageController.text),
                              scheduleList,
                              isdateSeleted!,
                              istimeSelected!,
                              doctorId);
                        }
                      },
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 164, 198, 226),
                          ),
                          onPressed: () {
                            if (isdateSeleted != null &&
                                istimeSelected != null) {
                              if (nameController.text.isNotEmpty &&
                                  ageController.text.isNotEmpty) {
                                BlocProvider.of<PaymentBloc>(context)
                                    .add(PaymentEvent.getOrderOption(fee: fee));
                              } else {
                                showdiologue(context, 'name and age must fill');
                              }
                            } else {
                              showdiologue(
                                  context, 'date and time should be selected');
                            }
                          },
                          child: cText1('BookNow')),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 45,
                    width: 140,
                    child: BlocListener<PaymentBloc, PaymentState>(
                      listener: (context, state) async {
                        if (state.orderResponse!.status == ApiStatus.complete &&
                            !isPaymentCall) {
                          isPaymentCall = true;

                          return await getRazorPay(
                              context,
                              fee,
                              state.orderResponse!.data!.order!,
                              nameController.text,
                              int.parse(ageController.text),
                              scheduleList,
                              isdateSeleted!,
                              istimeSelected!,
                              doctorId);
                        }
                      },
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 164, 198, 226),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: cText1('cancel')),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

timeSchedule(Schedule time, int? timeSelected, int index) {
  var startTime = DateTime.parse(time.startDate!);
  return BlocBuilder<PatientBookingBloc, PatientBookingState>(
    builder: (context, state) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: state.selectedTimeIndex == null
              ? Colors.white
              : state.selectedTimeIndex == index
                  ? const Color.fromARGB(255, 52, 150, 230)
                  : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          BlocProvider.of<PatientBookingBloc>(context)
              .add(PatientBookingEvent.checkTimeselection(timeindex: index));
        },
        child: Row(
          children: [
            Text(
              "start time ${startTime.hour}:${startTime.minute}",
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            space1w(),
            space1w(),
            Text(
              "end time ${time.endDate!.hour}:${time.endDate!.minute}",
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    },
  );
}

void popPage(BuildContext context) {
  Navigator.of(context).pop();
}
