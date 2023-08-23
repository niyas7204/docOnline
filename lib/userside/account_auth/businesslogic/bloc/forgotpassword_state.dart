part of 'forgotpassword_bloc.dart';

@freezed
class ForgotpasswordState with _$ForgotpasswordState {
  const factory ForgotpasswordState({required ApiResponse<bool> forgot}) =
      _ForgotpasswordState;
  factory ForgotpasswordState.initial() =>
      ForgotpasswordState(forgot: ApiResponse.initial());
}
