import 'package:doc_online/authentication/user/data/model/signup_model.dart';
import 'package:doc_online/authentication/user/data/repository/sign_up_service.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:injectable/injectable.dart';
part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignUpService signUpService;

  SignupBloc(this.signUpService) : super(SignupState.intial()) {
    on<_getSignUph>((event, emit) async {
      emit(state.copyWith(signUpResponse: ApiResponse.loading()));
      final Either<MainFailure, SignupInfo> response =
          await signUpService.getSignUp();

      emit(response.fold(
          (failure) =>
              state.copyWith(signUpResponse: ApiResponse.error(failure)),
          (success) =>
              state.copyWith(signUpResponse: ApiResponse.complete(success))));
    });
  }
  Future<void> getSignup(event, emit) async {}
}
