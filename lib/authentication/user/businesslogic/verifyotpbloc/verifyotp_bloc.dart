import 'package:dartz/dartz.dart';
import 'package:doc_online/authentication/user/data/model/login.dart';
import 'package:doc_online/authentication/user/data/repository/sign_up_service.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/core/responsehandler/api_response.dart';

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
      emit(state.copyWith(verify: ApiResponse.loading()));
      final Either<MainFailure, LogInfo> response =
          await otpService.checkOtp(event.otp);
      emit(response.fold(
          (failure) => state.copyWith(verify: ApiResponse.error(failure)),
          (success) => state.copyWith(verify: ApiResponse.complete(success))));
    });
  }
}
