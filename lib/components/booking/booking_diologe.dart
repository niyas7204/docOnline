import 'package:doc_online/components/book_diologue.dart';
import 'package:doc_online/components/schedule_components.dart/time_slots.dart';
import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/userside/bussinesslogic/paymet/payment_bloc.dart';
import 'package:doc_online/userside/data/model/booking/check_time_model.dart';
import 'package:doc_online/userside/data/repository/payment_handler.dart';
import 'package:doc_online/utils/alert_diologe.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

diologue(List<Result>? scheduleList, int? isdateSeleted, int? istimeSelected,
    int fee, context, String doctorId) {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  bool isPaymentCall = false;
  return Dialog(
    backgroundColor: const Color.fromARGB(255, 101, 131, 146).withOpacity(.9),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: CustomTexts.commonText1('Book Now')),
              SpaceSized.space1h,
              CustomTexts.labelText('Appoint Availble'),
              SpaceSized.space1h,
              Flexible(
                flex: 1,
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: scheduleList!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 6 / 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10),
                    itemBuilder: (context, index) => DateAndTime(
                        day: scheduleList[index].date!, index: index)),
              ),
              SpaceSized.space1h,
              isdateSeleted == null
                  ? const SizedBox()
                  : CustomTexts.labelText('time'),
              SpaceSized.space1h,
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
              SpaceSized.space1h,
              CustomTexts.labelText('Fee'),
              CustomTexts.labelText(fee.toString()),
              SpaceSized.space2h,
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(7)),
                  height: 40,
                  width: 300,
                  child: TextFormField(
                    controller: nameController,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 20),
                        hintText: 'Name'),
                  )),
              SpaceSized.space2h,
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(7)),
                  height: 40,
                  width: 300,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: ageController,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.left,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 20),
                        hintText: 'Age'),
                  )),
              SpaceSized.space2h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: SizedBox(
                      height: 45,
                      width: 150,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 164, 198, 226),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: CustomTexts.commonText1('cancel')),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 45,
                      width: 150,
                      child: BlocListener<PaymentBloc, PaymentState>(
                        listener: (context, state) async {
                          switch (state.orderResponse!.status) {
                            case ApiStatus.loading:
                              CircularProgressIndicator;
                              break;
                            case ApiStatus.complete:
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
                            default:
                              {}
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
                                  BlocProvider.of<PaymentBloc>(context).add(
                                      PaymentEvent.getOrderOption(fee: fee));
                                } else {
                                  CustomAlertDiologe.showAlertdiolog(
                                      context, 'name and age must fill');
                                }
                              } else {
                                CustomAlertDiologe.showAlertdiolog(context,
                                    'date and time should be selected');
                              }
                            },
                            child: CustomTexts.commonText1('BookNow')),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
