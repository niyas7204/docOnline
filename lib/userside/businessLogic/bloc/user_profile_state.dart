part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState(
      {required ApiResponse<UserProfileModel> userProfile}) = userProfileState;
  factory UserProfileState.initial() =>
      userProfileState(userProfile: ApiResponse.loading());
}
