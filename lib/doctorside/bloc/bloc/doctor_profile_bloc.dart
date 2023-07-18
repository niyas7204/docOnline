import 'package:doc_online/doctorside/data/data/data_providers/response/api_response.dart';
import 'package:doc_online/doctorside/data/data/model/doctorprofilemodel.dart';
import 'package:doc_online/doctorside/data/data/repository/doctor/docrorview_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_profile_event.dart';
part 'doctor_profile_state.dart';
part 'doctor_profile_bloc.freezed.dart';

class DoctorProfileBloc extends Bloc<DoctorProfileEvent, DoctorProfileState> {
  final DoctorviewSevice doctorviewSevice;
  DoctorProfileBloc(this.doctorviewSevice)
      : super(DoctorProfileState.initial()) {
    on<DoctorProfileEvent>((event, emit) async {
      emit(state.copyWith(profile: ApiResponse.loading()));
      final response = await doctorviewSevice.getDoctorProfile();
      emit(response.fold((l) => state.copyWith(profile: ApiResponse.error(l)),
          (r) => state.copyWith(profile: ApiResponse.complete(r))));
    });
  }
}
