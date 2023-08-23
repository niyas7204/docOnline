part of 'bookings_bloc.dart';

@freezed
class BookingsState with _$BookingsState {
  const factory BookingsState({
    required ApiResponse<BookingsModel> bookings,
    required ApiResponse<BookingsModel> todaysbookings,
    required AppointmentSelection selection,
  }) = bookingsState;
  factory BookingsState.initial() => bookingsState(
      bookings: ApiResponse.loading(),
      selection: AppointmentSelection.today,
      todaysbookings: ApiResponse.initial());
}
