part of 'userside_bloc.dart';

@freezed
class UsersideState with _$UsersideState {
  const factory UsersideState(
      {required bool isLoading,
      required List<DepartmentData> departmentData,
      required List<HospitalInfo> hospitalData,
      required DoctorByDepartment? doctorData,
      required DocterTrial? doctorDetails,
      required bool isError,
      required DoctorSchedule? schedule}) = _UsersideState;

  factory UsersideState.initial() => const UsersideState(
      schedule: null,
      isLoading: false,
      doctorDetails: null,
      departmentData: [],
      hospitalData: [],
      doctorData: null,
      isError: false);
}
