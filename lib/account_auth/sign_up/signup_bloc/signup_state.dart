part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
    SignupInfo? signUpResponse,
    required Option<Either<MainFailure, SignupInfo>> failureOrSuccess,
  }) = _SignupState;
  factory SignupState.intial() =>
      SignupState(isLoading: false, failureOrSuccess: none());
}
