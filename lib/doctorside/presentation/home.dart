import 'package:doc_online/core/helpers/enum.dart';
import 'package:doc_online/doctorside/bloc/doctor/docter_view/bloc/bookings_bloc.dart';
import 'package:doc_online/core/responsehandler/status.dart';
import 'package:doc_online/doctorside/core/helpers/create_booking_list.dart';
import 'package:doc_online/doctorside/data/model/bookingsmodel.dart';
import 'package:doc_online/doctorside/presentation/core/logo.dart';
import 'package:doc_online/doctorside/presentation/widgets/profile_icon.dart';
import 'package:doc_online/doctorside/presentation/widgets/common_widgets.dart';
import 'package:doc_online/utils/space_sized.dart';
import 'package:doc_online/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorHomeSc extends StatelessWidget {
  const DoctorHomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BookingsBloc>(context)
        .add(const BookingsEvent.getTodaysBookings());

    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/sethescope.jpg"),
              fit: BoxFit.cover)),
      child: BlocBuilder<BookingsBloc, BookingsState>(
        builder: (context, state) {
          switch (state.bookings.status) {
            case ApiStatus.loading:
              return const Center(child: CircularProgressIndicator());

            case ApiStatus.error:
              return const SizedBox();

            case ApiStatus.complete:
              List<Booking> bookingsList;
              switch (state.selection) {
                case AppointmentSelection.today:
                  bookingsList = state.todaysbookings.data!.bookings!;
                  break;
                case AppointmentSelection.upcoming:
                  bookingsList = createUpcoming(state.bookings.data!.bookings!);
                  break;
                case AppointmentSelection.completed:
                  bookingsList =
                      createCompleted(state.bookings.data!.bookings!);
                  break;
              }

              return SafeArea(
                child: RefreshIndicator(
                  onRefresh: () => onCall(context),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [logo(), const ProfileIcon()],
                        ),
                        SpaceSized.space1h,
                        SpaceSized.space1h,
                        CustomTexts.header1('Appoinments'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: state.selection ==
                                            AppointmentSelection.today
                                        ? Colors.blueGrey
                                        : Colors.blueGrey.withOpacity(.5)),
                                onPressed: () {
                                  BlocProvider.of<BookingsBloc>(context).add(
                                      const BookingsEvent.changeSelection(
                                          selection:
                                              AppointmentSelection.today));
                                },
                                child: CustomTexts.buttonText('Todays')),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: state.selection ==
                                            AppointmentSelection.upcoming
                                        ? Colors.blueGrey
                                        : Colors.blueGrey.withOpacity(.5)),
                                onPressed: () {
                                  BlocProvider.of<BookingsBloc>(context).add(
                                      const BookingsEvent.changeSelection(
                                          selection:
                                              AppointmentSelection.upcoming));
                                },
                                child: CustomTexts.buttonText('upcoming')),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: state.selection ==
                                            AppointmentSelection.completed
                                        ? Colors.blueGrey
                                        : Colors.blueGrey.withOpacity(.5)),
                                onPressed: () {
                                  BlocProvider.of<BookingsBloc>(context).add(
                                      const BookingsEvent.changeSelection(
                                          selection:
                                              AppointmentSelection.completed));
                                },
                                child: CustomTexts.buttonText('completed'))
                          ],
                        ),
                        bookingsList.isNotEmpty
                            ? Expanded(
                                child: ListView.separated(
                                    itemBuilder: (context, index) =>
                                        patientCard(bookingsList, index,
                                            context, state.selection),
                                    separatorBuilder: (context, index) =>
                                        SpaceSized.space1h,
                                    itemCount: bookingsList.length))
                            : Center(
                                child: CustomTexts.errorText(
                                    'No appointment available'),
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
      ),
    ));
  }

  onCall(context) {
    BlocProvider.of<BookingsBloc>(context)
        .add(const BookingsEvent.getTodaysBookings());
  }
}
