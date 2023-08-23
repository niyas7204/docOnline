part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState({
    ApiResponse<bool>? logResponse,
  }) = _DoctorState;
  factory DoctorState.initial() {
    return DoctorState(logResponse: ApiResponse.initial());
  }
}
