part of 'departments_bloc.dart';

@freezed
class DepartmentsState with _$DepartmentsState {
  const factory DepartmentsState(
          {required ApiResponse<DepartmentsInfo> departmentData}) =
      _DepartmentsState;
  factory DepartmentsState.initial() =>
      DepartmentsState(departmentData: ApiResponse.initial());
}
