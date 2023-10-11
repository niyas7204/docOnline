part of 'doctorprofileresponse_bloc.dart';

@freezed
class DoctorprofileresponseEvent with _$DoctorprofileresponseEvent {
  const factory DoctorprofileresponseEvent.getDoctorProfile() =
      _GetDoctorProfile;
  const factory DoctorprofileresponseEvent.addDoctorProfile() =
      _addDoctorProfile;
}
