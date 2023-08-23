part of 'verifyotp_bloc.dart';

@freezed
class VerifyotpState with _$VerifyotpState {
  const factory VerifyotpState({
    required ApiResponse<LogInfo> verify,
  }) = _VerifyotpState;
  factory VerifyotpState.inital() =>
      VerifyotpState(verify: ApiResponse.initial());
}
