part of 'bookings_bloc.dart';

@freezed
class BookingsEvent with _$BookingsEvent {
  const factory BookingsEvent.getBookings() = _getBookings;
}
