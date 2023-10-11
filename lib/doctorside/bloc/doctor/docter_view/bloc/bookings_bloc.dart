import 'package:doc_online/core/helpers/enum.dart';
import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:doc_online/doctorside/data/model/bookingsmodel.dart';
import 'package:doc_online/doctorside/data/repository/doctor/docrorview_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookings_event.dart';
part 'bookings_state.dart';
part 'bookings_bloc.freezed.dart';

class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  final DoctorviewSevice doctorviewSevice;
  BookingsBloc(this.doctorviewSevice) : super(BookingsState.initial()) {
    on<_getTodaysBookings>((event, emit) async {
      emit(state.copyWith(bookings: ApiResponse.loading()));
      final response = await doctorviewSevice.getBookings();
      final todays = await doctorviewSevice.getTodaysBookings();
      emit(response.fold((l) => state.copyWith(bookings: ApiResponse.error(l)),
          (r) => state.copyWith(bookings: ApiResponse.complete(r))));
      emit(todays.fold((l) => state.copyWith(bookings: ApiResponse.error(l)),
          (r) => state.copyWith(todaysbookings: ApiResponse.complete(r))));
    });
    on<_changeSelection>((event, emit) {
      emit(state.copyWith(selection: event.selection));
    });
  }
}
