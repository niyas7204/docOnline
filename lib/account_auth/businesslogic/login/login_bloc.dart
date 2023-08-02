import 'package:doc_online/account_auth/data/model/login.dart';
import 'package:doc_online/account_auth/data/repository/login_service.dart';
import 'package:doc_online/core/responsehandler/api_response.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LogInService logInService;
  LoginBloc(this.logInService) : super(LoginState.initial()) {
    on<_AuthLogIn>((event, emit) async {
      emit(state.copyWith(loginData: ApiResponse.loading()));
      final response = await logInService.authLogIn(
          email: event.email, password: event.password);
      emit(response.fold((l) => state.copyWith(loginData: ApiResponse.error(l)),
          (r) => state.copyWith(loginData: ApiResponse.complete(r))));
    });
  }
}
