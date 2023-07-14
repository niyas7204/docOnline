import 'package:dartz/dartz.dart';
import 'package:doc_online/doctorside/data/data/data_providers/response/api_response.dart';
import 'package:doc_online/doctorside/data/data/model/doctor_side/bookingsModel.dart';
import 'package:doc_online/doctorside/data/data/repository/doctor/docrorview_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookings_event.dart';
part 'bookings_state.dart';
part 'bookings_bloc.freezed.dart';

class BookingsBloc extends Bloc<BookingsEvent, BookingsState> {
  final DoctorviewSevice doctorviewSevice;
  BookingsBloc(this.doctorviewSevice) : super(BookingsState.initial()) {
    on<_getBookings>((event, emit) async {
      emit(state.copyWith(bookings: ApiResponse.loading()));
      final response = await doctorviewSevice.getBookings();
      emit(response.fold(
          (l) => state.copyWith(bookings: ApiResponse.error(l.toString())),
          (r) => state.copyWith(bookings: ApiResponse.complete(r))));
    });
  }
}
