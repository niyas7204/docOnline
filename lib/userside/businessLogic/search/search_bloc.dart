import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:doc_online/doctorside/data/data/data_providers/response/api_response.dart';
import 'package:doc_online/userside/data/model/doctors/doctors.dart';
import 'package:doc_online/userside/data/model/hopital/hospital_model.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:doc_online/userside/presentation/functions/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchService searchService;
  SearchBloc(this.searchService) : super(SearchState.initial()) {
    on<DoctorSearch>((event, emit) async {
      emit(state.copyWith(doctorsList: ApiResponse.loading()));

      final response = await searchService.getDoctors();
      emit(response.fold(
          (l) => state.copyWith(doctorsList: ApiResponse.error(l)),
          (r) => state.copyWith(
              isSearch: false,
              doctorsList: ApiResponse.complete(r),
              searchSelection: SearchSelection.doctors)));
    });
    on<HospitalSearch>((event, emit) async {
      emit(state.copyWith(hospitalList: ApiResponse.loading()));

      final response = await searchService.getHospitals();
      emit(response.fold(
          (l) => state.copyWith(hospitalList: ApiResponse.error(l)),
          (r) => state.copyWith(
              hospitalList: ApiResponse.complete(r),
              searchSelection: SearchSelection.hospitals)));
    });
    on<OnDoctorSearch>((event, emit) {
      emit(state.copyWith(hospitalList: ApiResponse.loading()));

      final response = searchService.onDoctorSearch(
          doctors: event.doctorList, query: event.query);
      emit(state.copyWith(doctorResult: response, isSearch: true));
    });
  }
}
