import 'package:doc_online/core/responsehandler/status.dart';

import 'package:doc_online/userside/bussinesslogic/booking/booking_bloc.dart';

import 'package:doc_online/userside/presentation/widgets/widgets.dart';
import 'package:doc_online/userside/presentation/widgets/cards.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PatientBookingBloc>(context)
        .add(const PatientBookingEvent.getBookings());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 101, 131, 146),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Bookings',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(20), color: Colors.white),
            ),
          ],
        ),
      ),
      body:
          SafeArea(child: BlocBuilder<PatientBookingBloc, PatientBookingState>(
        builder: (context, state) {
          switch (state.bookings.status) {
            case ApiStatus.error:
              return const SizedBox();

            case ApiStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ApiStatus.complete:
              return Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header1('Bookings'),
                    space1h(),
                    state.bookings.data!.bookings!.isEmpty
                        ? Center(
                            child: errorText('No bookings found'),
                          )
                        : const SizedBox(),
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) => bookingCard(
                              state.bookings.data!.bookings![index]),
                          separatorBuilder: (context, index) => space1h(),
                          itemCount: state.bookings.data!.bookings!.length),
                    ),
                  ],
                ),
              );
            default:
              return const SizedBox();
          }
        },
      )),
    );
  }
}
