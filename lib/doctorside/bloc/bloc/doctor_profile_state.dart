part of 'doctor_profile_bloc.dart';

@freezed
class DoctorProfileState with _$DoctorProfileState {
  const factory DoctorProfileState(
      {required ApiResponse<DoctorProfileModel> profile}) = _DoctorProfileState;
  factory DoctorProfileState.initial() =>
      _DoctorProfileState(profile: ApiResponse.loading());
}
