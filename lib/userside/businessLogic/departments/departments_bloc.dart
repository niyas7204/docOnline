import 'package:bloc/bloc.dart';
import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:doc_online/userside/data/model/department/department_model.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'departments_event.dart';
part 'departments_state.dart';
part 'departments_bloc.freezed.dart';

class DepartmentsBloc extends Bloc<DepartmentsEvent, DepartmentsState> {
  final UserSideService userSideService;
  DepartmentsBloc(this.userSideService) : super(DepartmentsState.initial()) {
    on<_getDepartmentdata>((event, emit) async {
      emit(state.copyWith(departmentData: ApiResponse.loading()));
      final response = await userSideService.getDepartmentdata();

      emit(response.fold(
          (failure) =>
              state.copyWith(departmentData: ApiResponse.error(failure)),
          (succes) =>
              state.copyWith(departmentData: ApiResponse.complete(succes))));
    });
  }
}
