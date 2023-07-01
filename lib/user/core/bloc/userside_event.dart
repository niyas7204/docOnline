part of 'userside_bloc.dart';

@freezed
class UsersideEvent with _$UsersideEvent {
  const factory UsersideEvent.getDepartmentdata() = _getDepartmentdata;
  const factory UsersideEvent.getHospitalData() = _getHospitalData;
  const factory UsersideEvent.getDoctors({required String id}) = _getDoctors;
}
