part of 'userside_bloc.dart';

@freezed
class UsersideEvent with _$UsersideEvent {
  const factory UsersideEvent.getDepartmentdata() = _getDepartmentdata;
  const factory UsersideEvent.getHospitalData() = _getHospitalData;
  const factory UsersideEvent.getDoctors({required String id}) = _getDoctors;
  const factory UsersideEvent.getDoctor({required String dId}) = _getDoctor;
  const factory UsersideEvent.getDoctorSchedule({required String dId}) =
      _getDoctorSchedule;
}
