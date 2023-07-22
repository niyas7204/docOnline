part of 'emr_bloc.dart';

@freezed
class EmrEvent with _$EmrEvent {
  const factory EmrEvent.getEmr({required String bookingId}) = _getemr;
}
