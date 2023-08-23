part of 'forgotpassword_bloc.dart';

@freezed
class ForgotpasswordEvent with _$ForgotpasswordEvent {
  const factory ForgotpasswordEvent.getOtp({required String email}) = _getOtp;
  const factory ForgotpasswordEvent.getVerifyRgister({required String otp}) =
      _getVerifyRegister;
  const factory ForgotpasswordEvent.getRgister({required String password}) =
      _getRegister;
}
