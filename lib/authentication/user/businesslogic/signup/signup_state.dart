part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    ApiResponse<SignupInfo>? signUpResponse,
  }) = _SignupState;
  factory SignupState.intial() =>
      SignupState(signUpResponse: ApiResponse.initial());
}
