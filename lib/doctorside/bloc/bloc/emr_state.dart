part of 'emr_bloc.dart';

@freezed
class EmrState with _$EmrState {
  const factory EmrState(
      {required ApiResponse<EmrResponseModel> emrDetails,
      required bool editEmr}) = emrState;
  factory EmrState.initial() =>
      emrState(emrDetails: ApiResponse.loading(), editEmr: false);
}
