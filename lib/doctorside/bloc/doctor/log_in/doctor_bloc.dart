import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:doc_online/doctorside/data/repository/doctor/doctor_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final DoctorService doctorService;
  DoctorBloc(this.doctorService) : super(DoctorState.initial()) {
    on<_getDoctorLogIn>((event, emit) async {
      emit(state.copyWith(logResponse: ApiResponse.loading()));
      final Either<MainFailure, bool> response = await doctorService
          .getDoctorLogIn(email: event.email, password: event.password);

      emit(response.fold(
          (failure) => state.copyWith(logResponse: ApiResponse.error(failure)),
          (success) =>
              state.copyWith(logResponse: ApiResponse.complete(success))));
    });
  }
}
