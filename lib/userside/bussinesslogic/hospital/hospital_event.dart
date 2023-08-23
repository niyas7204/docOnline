part of 'hospital_bloc.dart';

@freezed
class HospitalEvent with _$HospitalEvent {
  const factory HospitalEvent.getHospitalDetails({required String hospitalId}) =
      _getHospitalDetails;
  const factory HospitalEvent.getTopHospitalData() = _getHospitalData;
  factory HospitalEvent.addFeedBack(
      {required int rating,
      required String doctorId,
      required String review}) = _addFeedback;
}
