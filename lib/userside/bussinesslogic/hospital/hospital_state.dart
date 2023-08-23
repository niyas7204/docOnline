part of 'hospital_bloc.dart';

@freezed
class HospitalState with _$HospitalState {
  const factory HospitalState({
    required ApiResponse<SingleHospital> hospitalDetails,
    required ApiResponse<HospitalData> hospitalData,
  }) = _HospitalState;
  factory HospitalState.initial() => HospitalState(
      hospitalDetails: ApiResponse.initial(),
      hospitalData: ApiResponse.initial());
}
