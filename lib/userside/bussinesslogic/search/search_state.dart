part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState(
          {required SearchSelection searchSelection,
          required ApiResponse<DoctorByDepartment>? doctorsList,
          required ApiResponse<HospitalData>? hospitalList,
          required bool isSearch,
          required ApiResponse<List<Doctors>>? doctorResult,
          required ApiResponse<List<HospitalDeatails>>? hospitalResult}) =
      searchState;

  factory SearchState.initial() => searchState(
      doctorResult: null,
      hospitalResult: null,
      isSearch: false,
      searchSelection: SearchSelection.hospitals,
      doctorsList: null,
      hospitalList: null);
}
