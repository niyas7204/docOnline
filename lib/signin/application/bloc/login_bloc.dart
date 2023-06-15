import 'package:doc_online/signin/login_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doc_online/domain/model/login.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:doc_online/domain/failure/failure.dart';
part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LogInService loginservice;
  LoginBloc(this.loginservice) : super(LoginState.initial()) {
    on<_AuthLogIn>((event, emit) async {
      emit(state.copyWith(isloading: true, failureOrSuccess: none()));
      final Either<MainFailure, LogInfo> response =
          await loginservice.authLogIn();
      emit(response.fold(
          (failure) => state.copyWith(
              isloading: false, failureOrSuccess: some(left(failure))),
          (success) => state.copyWith(
              isloading: false,
              logResponse: success,
              failureOrSuccess: some(right(success)))));
    });
  }
}
