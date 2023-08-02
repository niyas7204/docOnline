part of 'booking_bloc.dart';

@freezed
class PatientBookingState with _$PatientBookingState {
  const factory PatientBookingState({
    required ApiResponse<UserBookingsModel> bookings,
    required ApiResponse<List<Result>>? scheduleList,
    required int? selectedDateIndex,
    required int? selectedTimeIndex,
  }) = _patientbookingState;
  factory PatientBookingState.initial() => PatientBookingState(
      bookings: ApiResponse.loading(),
      scheduleList: null,
      selectedDateIndex: null,
      selectedTimeIndex: null);
}
