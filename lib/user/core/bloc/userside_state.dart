part of 'userside_bloc.dart';

@freezed
class UsersideState with _$UsersideState {
  const factory UsersideState({
    required bool isLoading,
    required List<DepartmentData> departmentData,
    required List<HospitalInfo> hospitalData,
    required List<DocterData> doctorData,
    required bool isError,
  }) = _UsersideState;
  factory UsersideState.initial() => const UsersideState(
      isLoading: false,
      departmentData: [],
      hospitalData: [],
      doctorData: [],
      isError: false);
}
