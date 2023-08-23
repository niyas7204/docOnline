part of 'bookings_bloc.dart';

@freezed
class BookingsEvent with _$BookingsEvent {
  const factory BookingsEvent.getTodaysBookings() = _getTodaysBookings;
  const factory BookingsEvent.changeSelection(
      {required AppointmentSelection selection}) = _changeSelection;
}
