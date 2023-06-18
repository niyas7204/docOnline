part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.authLogIn(
      {required String email, required String password}) = _AuthLogIn;
  const factory LoginEvent.getSignUp() = _getSignUph;
}
