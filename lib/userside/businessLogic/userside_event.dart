part of 'userside_bloc.dart';

@freezed
class UsersideEvent with _$UsersideEvent {
  const factory UsersideEvent.getByDepartmentDoctors({required String id}) =
      _getByDepartmentDoctors;
  const factory UsersideEvent.getDoctor({required String dId}) = _getDoctor;
  const factory UsersideEvent.getDoctorSchedule({required String dId}) =
      _getDoctorSchedule;
}
