part of 'verifyotp_bloc.dart';

@freezed
class VerifyotpEvent with _$VerifyotpEvent {
  const factory VerifyotpEvent.checkOtp(String otp) = _checkOtp;
}
