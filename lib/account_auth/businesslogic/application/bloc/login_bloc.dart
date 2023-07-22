import 'dart:developer';
import 'package:doc_online/account_auth/data/model/login.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dartz/dartz.dart';

import '../../../data/repository/login_service.dart';
part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LogInService loginservice;
  LoginBloc(this.loginservice) : super(LoginState.initial()) {
    on<_AuthLogIn>((event, emit) async {
      log('asdfadsfsdf');
      emit(state.copyWith(isloading: true, failureOrSuccess: none()));
      final Either<MainFailure, LogInfo> response = await loginservice
          .authLogIn(email: event.email, password: event.password);
      log('abcd${response.toString()}');
      emit(response.fold(
          (failure) => state.copyWith(
              isloading: false, failureOrSuccess: some(left(failure))),
          (success) => state.copyWith(
              isloading: false,
              logResponse: success,
              failureOrSuccess: some(right(success)))));
    });
    //sign up
    on<_getSignUph>((event, emit) async {
      emit(state.copyWith(isloading: true, failureOrSuccess: none()));
      final Either<MainFailure, LogInfo> response =
          await loginservice.getSignUp();

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