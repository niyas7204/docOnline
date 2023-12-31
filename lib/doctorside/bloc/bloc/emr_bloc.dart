import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:doc_online/doctorside/data/model/emr_model.dart';
import 'package:doc_online/doctorside/data/repository/doctor/docrorview_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emr_event.dart';
part 'emr_state.dart';
part 'emr_bloc.freezed.dart';

class EmrBloc extends Bloc<EmrEvent, EmrState> {
  EmrService emrService;
  EmrBloc(this.emrService) : super(EmrState.initial()) {
    on<_getemr>((event, emit) async {
      emit(state.copyWith(emrDetails: ApiResponse.loading()));
      final response = await emrService.getEmr(bookingId: event.bookingId);
      emit(response.fold(
          (l) => state.copyWith(emrDetails: ApiResponse.error(l)),
          (r) => state.copyWith(
              emrDetails: ApiResponse.complete(r), editEmr: false)));
    });
    on<_enableEdit>((event, emit) {
      emit(state.copyWith(editEmr: true));
    });
    on<_addemr>((event, emit) async {
      emit(state.copyWith(emrDetails: ApiResponse.loading()));
      await emrService.addEmr(
          userId: event.userId,
          bookingId: event.bookingId,
          prescription: event.prescription,
          patientName: event.patientName,
          age: event.age,
          weight: event.weight,
          gender: event.gender);
      final response = await emrService.getEmr(bookingId: event.bookingId);
      emit(response.fold(
          (l) => state.copyWith(emrDetails: ApiResponse.error(l)),
          (r) => state.copyWith(
              emrDetails: ApiResponse.complete(r), editEmr: false)));
    });
  }
}
