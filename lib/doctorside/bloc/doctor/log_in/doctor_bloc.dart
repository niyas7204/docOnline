import 'dart:developer';

import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/doctorside/data/data/repository/doctor/doctor_repo.dart';
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
      emit(state.copyWith(isloading: true, failureOrSuccess: none()));
      final Either<MainFailure, bool> response = await doctorService
          .getDoctorLogIn(email: event.email, password: event.password);
      log('bloc response$response');
      emit(response.fold(
          (failure) => state.copyWith(
              isloading: false, failureOrSuccess: some(left(failure))),
          (success) => state.copyWith(
              isloading: false,
              logResponse: success,
              failureOrSuccess: some(right(success)))));
    });
  }
}
