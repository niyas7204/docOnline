import 'package:doc_online/core/responsehandler/api_response.dart';

import 'package:doc_online/userside/data/model/hopital/hospital_model.dart';
import 'package:doc_online/userside/data/model/hopital/single_hospital.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hospital_event.dart';
part 'hospital_state.dart';
part 'hospital_bloc.freezed.dart';

class HospitalBloc extends Bloc<HospitalEvent, HospitalState> {
  final HospitalService hospitalService;
  HospitalBloc(this.hospitalService) : super(HospitalState.initial()) {
    on<_getHospitalData>((event, emit) async {
      emit(state.copyWith(hospitalData: ApiResponse.loading()));
      final response = await hospitalService.getTopHospitalData();

      emit(response.fold(
          (failure) => state.copyWith(hospitalData: ApiResponse.error(failure)),
          (succes) => state.copyWith(
                hospitalData: ApiResponse.complete(succes),
              )));
    });
    on<_getHospitalDetails>((event, emit) async {
      emit(state.copyWith(hospitalDetails: ApiResponse.loading()));

      final response =
          await hospitalService.getHospitalDetails(event.hospitalId);

      emit(response.fold((failure) {
        return state.copyWith(hospitalDetails: ApiResponse.error(failure));
      }, (succes) {
        return state.copyWith(hospitalDetails: ApiResponse.complete(succes));
      }));
    });
    on<_addFeedback>((event, emit) async {
      await hospitalService.addRating(
          rating: event.rating,
          hospitalId: event.doctorId,
          review: event.review);

      final response = await hospitalService.getHospitalDetails(event.doctorId);
      emit(response.fold((failure) {
        return state.copyWith(
          hospitalDetails: ApiResponse.error(failure),
        );
      }, (succes) {
        return state.copyWith(
          hospitalDetails: ApiResponse.complete(succes),
        );
      }));
    });
  }
}
