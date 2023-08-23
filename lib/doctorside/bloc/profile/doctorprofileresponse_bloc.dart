import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:doc_online/doctorside/data/model/doctorprofilemodel.dart';
import 'package:doc_online/doctorside/data/repository/doctor/docrorview_service.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctorprofileresponse_event.dart';
part 'doctorprofileresponse_state.dart';
part 'doctorprofileresponse_bloc.freezed.dart';

class DoctorprofileresponseBloc
    extends Bloc<DoctorprofileresponseEvent, DoctorprofileresponseState> {
  final DoctorviewSevice doctorviewSevice;
  DoctorprofileresponseBloc(this.doctorviewSevice)
      : super(DoctorprofileresponseState.initial()) {
    on<_GetDoctorProfile>((event, emit) async {
      emit(state.copyWith(profile: ApiResponse.loading()));
      final response = await doctorviewSevice.getDoctorProfile();
      emit(response.fold((l) => state.copyWith(profile: ApiResponse.error(l)),
          (r) => state.copyWith(profile: ApiResponse.complete(r))));
    });
    on<_addDoctorProfile>((event, emit) async {
      emit(state.copyWith(profile: ApiResponse.loading()));
      await doctorviewSevice.addProfile(image: event.image);
      final response = await doctorviewSevice.getDoctorProfile();
      emit(response.fold(
          (l) => state.copyWith(profile: ApiResponse.error(l)),
          (r) => state.copyWith(
                profile: ApiResponse.complete(r),
              )));
    });
  }
}
