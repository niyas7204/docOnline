part of 'userside_bloc.dart';

@freezed
class UsersideState with _$UsersideState {
  const factory UsersideState({
    required ApiResponse<DoctorByDepartment> doctorData,
    required ApiResponse<DocterTrial> doctorDetails,
    required ApiResponse<DoctorSchedule> schedule,
  }) = _UsersideState;

  factory UsersideState.initial() => UsersideState(
        schedule: ApiResponse.initial(),
        doctorData: ApiResponse.initial(),
        doctorDetails: ApiResponse.initial(),
      );
}
