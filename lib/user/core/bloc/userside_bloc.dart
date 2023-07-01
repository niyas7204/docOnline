import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/user/infrastrusture/data_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../model/department/department_model.dart';
import '../model/doctors/doctors.dart';
import '../model/hopital/hospital_model.dart';
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
      log(response.toString());
      emit(response.fold(
          (failure) => state.copyWith(
              isLoading: false,
              departmentData: [],
              doctorData: state.doctorData,
              hospitalData: state.hospitalData,
              isError: true),
          (succes) => state.copyWith(
              isLoading: false,
              doctorData: state.doctorData,
              departmentData: succes.departments,
              hospitalData: state.hospitalData)));
    });
    on<_getHospitalData>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          doctorData: state.doctorData,
          departmentData: state.departmentData,
          hospitalData: state.hospitalData,
          isError: false));
      final response = await userSideService.getHospitalData();
      log("hhh${response.toString()}");
      emit(response.fold(
          (failure) => state.copyWith(
              isLoading: false,
              departmentData: state.departmentData,
              hospitalData: [],
              isError: true),
          (succes) => state.copyWith(
              isLoading: false,
              doctorData: state.doctorData,
              departmentData: state.departmentData,
              hospitalData: succes.hopitals,
              isError: false)));
    });
    on<_getDoctors>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          departmentData: state.departmentData,
          hospitalData: state.hospitalData,
          isError: false));
      final response = await userSideService.getDoctors(event.id);
      log("hhh${response.toString()}");
      emit(response.fold(
          (failure) => state.copyWith(
              isLoading: false,
              departmentData: state.departmentData,
              hospitalData: state.hospitalData,
              doctorData: [],
              isError: true),
          (succes) => state.copyWith(
              isLoading: false,
              departmentData: state.departmentData,
              hospitalData: state.hospitalData,
              doctorData: succes.doctorsList,
              isError: false)));
    });
  }
}
