import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:doc_online/repository/user/data_service.dart';
import 'package:doc_online/ui/core/logo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:doc_online/model/user_side/department/department_model.dart';
import 'package:doc_online/model/user_side/doctors/doctors.dart';
import 'package:doc_online/model/user_side/hopital/hospital_model.dart';
import 'package:doc_online/model/user_side/schedule/doctor_schedule.dart';
import 'package:doc_online/model/user_side/doctors/single_doctor.dart';

part 'userside_event.dart';
part 'userside_state.dart';
part 'userside_bloc.freezed.dart';

@injectable
class UsersideBloc extends Bloc<UsersideEvent, UsersideState> {
  final UserSideService userSideService;

  UsersideBloc(this.userSideService) : super(UsersideState.initial()) {
    on<_getDepartmentdata>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          departmentData: state.departmentData,
          hospitalData: state.hospitalData,
          isError: false));
      final response = await userSideService.getDepartmentdata();

      emit(response.fold(
          (failure) => state.copyWith(
              isLoading: false,
              departmentData: [],
              doctorDetails: state.doctorDetails,
              hospitalData: state.hospitalData,
              isError: true),
          (succes) => state.copyWith(
              isLoading: false,
              doctorDetails: state.doctorDetails,
              doctorData: state.doctorData,
              departmentData: succes.departments,
              hospitalData: state.hospitalData)));
    });
    on<_getHospitalData>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final response = await userSideService.getHospitalData();

      emit(response.fold(
          (failure) =>
              state.copyWith(isLoading: false, hospitalData: [], isError: true),
          (succes) => state.copyWith(
              isLoading: false,
              doctorDetails: state.doctorDetails,
              hospitalData: succes.hopitals,
              isError: false)));
    });
    on<_getDoctors>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final response = await userSideService.getDoctors(event.id);

      emit(response.fold(
          (failure) => state.copyWith(
                isLoading: false,
                doctorData: null,
                isError: true,
              ),
          (succes) => state.copyWith(
              doctorDetails: state.doctorDetails,
              isLoading: false,
              doctorData: succes,
              isError: false)));
    });
    on<_getDoctor>((event, emit) async {
      emit(
          state.copyWith(isLoading: true, doctorDetails: null, isError: false));

      final response = await userSideService.getDoctor(event.dId);

      emit(response.fold((failure) {
        log('failure$failure');
        return state.copyWith(
            isLoading: false,
            doctorDetails: state.doctorDetails,
            isError: true);
      }, (succes) {
        log('success$succes');
        return state.copyWith(
            isLoading: false,
            schedule: state.schedule,
            doctorDetails: succes,
            isError: false);
      }));
    });
    on<_getDoctorSchedule>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, doctorDetails: state.doctorDetails, isError: false));

      final response = await userSideService.getDoctorSchedule(event.dId);

      emit(response.fold((failure) {
        log('failure$failure');
        return state.copyWith(
            isLoading: false,
            doctorDetails: state.doctorDetails,
            schedule: null,
            isError: true);
      }, (succes) {
        log('success$succes');
        return state.copyWith(
            isLoading: false,
            schedule: succes,
            doctorDetails: state.doctorDetails,
            isError: false);
      }));
    });
  }
}
