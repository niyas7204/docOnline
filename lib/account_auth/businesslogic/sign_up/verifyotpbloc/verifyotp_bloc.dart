import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/data/model/login.dart';

import 'package:doc_online/account_auth/data/repository/sign_up_service.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'verifyotp_event.dart';
part 'verifyotp_state.dart';
part 'verifyotp_bloc.freezed.dart';

@injectable
class VerifyotpBloc extends Bloc<VerifyotpEvent, VerifyotpState> {
  final OtpService otpService;
  VerifyotpBloc(this.otpService) : super(VerifyotpState.inital()) {
    on<VerifyotpEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, failureOrSuccess: none()));
      final Either<MainFailure, LogInfo> response =
          await otpService.checkOtp(event.otp);
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
