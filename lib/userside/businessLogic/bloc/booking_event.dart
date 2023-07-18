part of 'booking_bloc.dart';

@freezed
class PatientBookingEvent with _$PatientBookingEvent {
  const factory PatientBookingEvent.checkSlot({required UsersideState state}) =
      _checkSlot;
  const factory PatientBookingEvent.checkDateselection({required int index}) =
      _checkDateselection;
  const factory PatientBookingEvent.checkTimeselection(
      {required int timeindex}) = _checkTimeselection;
}
