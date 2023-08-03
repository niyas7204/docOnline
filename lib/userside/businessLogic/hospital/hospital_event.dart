part of 'hospital_bloc.dart';

@freezed
class HospitalEvent with _$HospitalEvent {
  const factory HospitalEvent.getHospitalDetails({required String hospitalId}) =
      _getHospitalDetails;
  const factory HospitalEvent.getHospitalData() = _getHospitalData;
}
