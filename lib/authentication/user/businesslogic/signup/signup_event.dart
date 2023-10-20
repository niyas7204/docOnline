part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.getSignUp({required GlobalKey<FormState> formKey}) =
      _getSignUph;
}
