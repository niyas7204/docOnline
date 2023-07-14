part of 'doctor_bloc.dart';

@freezed
class DoctorEvent with _$DoctorEvent {
  const factory DoctorEvent.getDoctorLogIn(
      {required String email, required String password}) = _getDoctorLogIn;
}
