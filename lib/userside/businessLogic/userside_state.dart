part of 'userside_bloc.dart';

@freezed
class UsersideState with _$UsersideState {
  const factory UsersideState(
      {required bool isLoading,
      required DepartmentsInfo? departmentData,
      required HospitalData? hospitalData,
      required DoctorByDepartment? doctorData,
      required DocterTrial? doctorDetails,
      required SingleHospital? hospitalDetails,
      required bool isError,
      required DoctorSchedule? schedule,
      required DoctorByDepartment? doctors,
      required List<Doctors> searchResult}) = _UsersideState;

  factory UsersideState.initial() => const UsersideState(
      searchResult: [],
      doctors: null,
      hospitalDetails: null,
      schedule: null,
      isLoading: false,
      doctorDetails: null,
      departmentData: null,
      hospitalData: null,
      doctorData: null,
      isError: false);
}
