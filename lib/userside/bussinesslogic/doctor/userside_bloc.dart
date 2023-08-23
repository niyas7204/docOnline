import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:doc_online/userside/data/model/doctors/single_doctor.dart';
import 'package:doc_online/userside/data/model/schedule/doctor_schedule.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:doc_online/userside/data/model/doctors/doctors.dart';

part 'userside_event.dart';
part 'userside_state.dart';
part 'userside_bloc.freezed.dart';

class UsersideBloc extends Bloc<UsersideEvent, UsersideState> {
  final UserSideService userSideService;

  UsersideBloc(this.userSideService) : super(UsersideState.initial()) {
    on<_getByDepartmentDoctors>((event, emit) async {
      emit(state.copyWith());
      final response = await userSideService.getByDepartmentDoctors(event.id);

      emit(response.fold(
          (failure) => state.copyWith(
                doctorData: ApiResponse.error(failure),
              ),
          (succes) => state.copyWith(
                doctorDetails: state.doctorDetails,
                doctorData: ApiResponse.complete(succes),
              )));
    });
    on<_getDoctor>((event, emit) async {
      emit(state.copyWith(doctorDetails: ApiResponse.loading()));

      final response = await userSideService.getDoctor(event.dId);

      emit(response.fold((failure) {
        return state.copyWith(
          doctorDetails: ApiResponse.error(failure),
        );
      }, (succes) {
        return state.copyWith(
          doctorDetails: ApiResponse.complete(succes),
        );
      }));
    });
    on<_getDoctorSchedule>((event, emit) async {
      emit(state.copyWith(doctorDetails: state.doctorDetails));

      final response = await userSideService.getDoctorSchedule(event.dId);

      emit(response.fold((failure) {
        return state.copyWith(
          schedule: ApiResponse.error(failure),
        );
      }, (succes) {
        return state.copyWith(
          schedule: ApiResponse.complete(succes),
        );
      }));
    });
    on<_addFeedback>((event, emit) async {
      await userSideService.addRating(
          rating: event.rating, doctorId: event.doctorId, review: event.review);

      final response = await userSideService.getDoctor(event.doctorId);
      emit(response.fold((failure) {
        return state.copyWith(
          doctorDetails: ApiResponse.error(failure),
        );
      }, (succes) {
        return state.copyWith(
          doctorDetails: ApiResponse.complete(succes),
        );
      }));
    });
    //hospital Details
  }
}
