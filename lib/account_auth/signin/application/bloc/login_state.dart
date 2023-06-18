
part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isloading,
    LogInfo? logResponse,
    required Option<Either<MainFailure, LogInfo>> failureOrSuccess,
  }) = _LoginState;
  factory LoginState.initial() {
    return LoginState(isloading: false, failureOrSuccess: none());
  }
}
