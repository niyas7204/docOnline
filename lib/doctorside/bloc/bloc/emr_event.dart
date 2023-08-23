part of 'emr_bloc.dart';

@freezed
class EmrEvent with _$EmrEvent {
  const factory EmrEvent.getEmr({required String bookingId}) = _getemr;
  const factory EmrEvent.enableEdit() = _enableEdit;
  const factory EmrEvent.addEmr(
      {required String userId,
      required String bookingId,
      required String prescription,
      required String patientName,
      required int age,
      required int weight,
      required String gender}) = _addemr;
}
