part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState({
    required bool isloading,
    bool? logResponse,
    required Option<Either<MainFailure, bool>> failureOrSuccess,
  }) = _DoctorState;
  factory DoctorState.initial() {
    return DoctorState(isloading: false, failureOrSuccess: none());
  }
}
