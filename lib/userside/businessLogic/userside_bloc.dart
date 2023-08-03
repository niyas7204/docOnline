import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:doc_online/userside/data/model/doctors/doctors.dart';
import 'package:doc_online/userside/data/model/hopital/hospital_model.dart';

import 'package:doc_online/userside/data/model/hopital/single_hospital.dart';

import '../data/model/doctors/single_doctor.dart';
import '../data/model/schedule/doctor_schedule.dart';

part 'userside_event.dart';
part 'userside_state.dart';
part 'userside_bloc.freezed.dart';

class UsersideBloc extends Bloc<UsersideEvent, UsersideState> {
  final UserSideService userSideService;

  UsersideBloc(this.userSideService) : super(UsersideState.initial()) {
    on<_getByDepartmentDoctors>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final response = await userSideService.getByDepartmentDoctors(event.id);

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
        return state.copyWith(
            isLoading: false,
            doctorDetails: state.doctorDetails,
            isError: true);
      }, (succes) {
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
        return state.copyWith(
            isLoading: false,
            doctorDetails: state.doctorDetails,
            schedule: null,
            isError: true);
      }, (succes) {
        return state.copyWith(
            isLoading: false,
            schedule: succes,
            doctorDetails: state.doctorDetails,
            isError: false);
      }));
    });
    //hospital Details
  }
}
