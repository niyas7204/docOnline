import 'package:doc_online/doctorside/data/data_providers/response/api_response.dart';
import 'package:doc_online/userside/data/model/userprofile/userprofile_model.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final UserProfileService userProfileService;
  UserProfileBloc(this.userProfileService) : super(UserProfileState.initial()) {
    on<UserProfileEvent>((event, emit) async {
      emit(state.copyWith(userProfile: ApiResponse.loading()));
      final response = await userProfileService.getUserprofile();
      emit(response.fold(
          (l) => state.copyWith(userProfile: ApiResponse.error(l)),
          (r) => state.copyWith(userProfile: ApiResponse.complete(r))));
    });
  }
}
