part of 'bookings_bloc.dart';

@freezed
class BookingsState with _$BookingsState {
  const factory BookingsState({
    required ApiResponse<BookingsModel> bookings,
  }) = bookingsState;
  factory BookingsState.initial() =>
      bookingsState(bookings: ApiResponse.loading());
}
