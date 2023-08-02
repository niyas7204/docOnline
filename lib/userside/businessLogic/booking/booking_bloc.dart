import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';
import 'package:doc_online/userside/data/model/booking/bookingsmodel.dart';
import 'package:doc_online/userside/data/model/booking/check_time_model.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

class PatientBookingBloc
    extends Bloc<PatientBookingEvent, PatientBookingState> {
  final BookingService bookingService;
  PatientBookingBloc(this.bookingService)
      : super(PatientBookingState.initial()) {
    on<_checkSlot>((event, emit) async {
      emit(state.copyWith(scheduleList: ApiResponse.loading()));
      final response = await bookingService.checkTimeslot(state: event.state);
      emit(response.fold(
          (l) => state.copyWith(scheduleList: ApiResponse.error(l)),
          (r) => state.copyWith(scheduleList: ApiResponse.complete(r))));
    });
    on<_checkDateselection>((event, emit) async {
      emit(state.copyWith(selectedDateIndex: event.index));
    });
    on<_checkTimeselection>((event, emit) async {
      emit(state.copyWith(selectedTimeIndex: event.timeindex));
    });
    on<_getBookings>((event, emit) async {
      emit(state.copyWith(
        bookings: ApiResponse.loading(),
      ));
      final response = await bookingService.getUserBookings();
      emit(response.fold((l) => state.copyWith(bookings: ApiResponse.error(l)),
          (r) => state.copyWith(bookings: ApiResponse.complete(r))));
    });
  }
}
