part of 'verifyotp_bloc.dart';

@freezed
class VerifyotpState with _$VerifyotpState {
  const factory VerifyotpState({
    required bool isLoading,
    LogInfo? signUpResponse,
    required Option<Either<MainFailure, LogInfo>> failureOrSuccess,
  }) = _VerifyotpState;
  factory VerifyotpState.inital() =>
      VerifyotpState(isLoading: false, failureOrSuccess: none());
}
