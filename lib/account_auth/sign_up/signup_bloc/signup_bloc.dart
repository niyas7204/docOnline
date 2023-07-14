import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:doc_online/account_auth/sign_up/sign_up_service.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doc_online/account_auth/domain/model/signup_model.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:injectable/injectable.dart';
part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignUpService signUpService;

  SignupBloc(this.signUpService) : super(SignupState.intial()) {
    log('init');
    on<_getSignUph>((event, emit) async {
      emit(state.copyWith(isLoading: true, failureOrSuccess: none()));
      final Either<MainFailure, SignupInfo> response =
          await signUpService.getSignUp();

      emit(response.fold(
          (failure) => state.copyWith(
              isLoading: false, failureOrSuccess: some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              signUpResponse: success,
              failureOrSuccess: some(right(success)))));
    });
  }
}
