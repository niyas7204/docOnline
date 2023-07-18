part of 'doctor_profile_bloc.dart';

@freezed
class DoctorProfileEvent with _$DoctorProfileEvent {
  const factory DoctorProfileEvent.getDoctorProfile() = _getDoctorProfile;
}
