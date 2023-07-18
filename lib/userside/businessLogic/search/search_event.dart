part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.doctorSearch() = DoctorSearch;
  const factory SearchEvent.hospitalSearch() = HospitalSearch;
  const factory SearchEvent.onDoctorSearch(
      {required List<Doctors> doctorList,
      required String query}) = OnDoctorSearch;
  const factory SearchEvent.onHospitalSearch({required List hospitalList}) =
      OnHospitalSearch;
}
