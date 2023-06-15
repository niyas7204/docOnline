part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
    LogInfo? signUpResponse,
    required Option<Either<MainFailure, LogInfo>> failureOrSuccess,
  }) = _SignupState;
  factory SignupState.intial() =>
      SignupState(isLoading: false, failureOrSuccess: none());
}
