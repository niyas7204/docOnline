part of 'doctorprofileresponse_bloc.dart';

@freezed
class DoctorprofileresponseState with _$DoctorprofileresponseState {
  const factory DoctorprofileresponseState({
    required ApiResponse<DoctorProfileModel> profile,
  }) = _DoctorprofileresponseState;
  factory DoctorprofileresponseState.initial() => _DoctorprofileresponseState(
        profile: ApiResponse.loading(),
      );
}
