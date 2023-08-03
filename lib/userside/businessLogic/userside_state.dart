part of 'userside_bloc.dart';

@freezed
class UsersideState with _$UsersideState {
  const factory UsersideState(
      {required bool isLoading,
      required DoctorByDepartment? doctorData,
      required DocterTrial? doctorDetails,
      required bool isError,
      required DoctorSchedule? schedule,
      required List<Doctors> searchResult}) = _UsersideState;

  factory UsersideState.initial() => const UsersideState(
      searchResult: [],
      schedule: null,
      isLoading: false,
      doctorDetails: null,
      doctorData: null,
      isError: false);
}
