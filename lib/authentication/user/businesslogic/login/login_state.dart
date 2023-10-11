part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required ApiResponse<LogInfo> loginData,
  }) = _LoginState;
  factory LoginState.initial() {
    return LoginState(loginData: ApiResponse.initial());
  }
}
