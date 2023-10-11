import 'package:doc_online/core/responsehandler/api_response.dart';
import 'package:doc_online/userside/account_auth/data/repository/sign_up_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgotpassword_event.dart';
part 'forgotpassword_state.dart';
part 'forgotpassword_bloc.freezed.dart';

class ForgotpasswordBloc
    extends Bloc<ForgotpasswordEvent, ForgotpasswordState> {
  final ForgotPasswordService forgotPasswordService;
  ForgotpasswordBloc(this.forgotPasswordService)
      : super(ForgotpasswordState.initial()) {
    on<_getOtp>((event, emit) async {
      emit(state.copyWith(forgot: ApiResponse.loading()));
      final response =
          await forgotPasswordService.changePassword(email: event.email);
      emit(response.fold((l) => state.copyWith(forgot: ApiResponse.error(l)),
          (r) => state.copyWith(forgot: ApiResponse.complete(r.error))));
    });
    on<_getVerifyRegister>((event, emit) async {
      emit(state.copyWith(forgot: ApiResponse.loading()));
      final response = await forgotPasswordService.verifyOtp(otp: event.otp);
      emit(response.fold((l) => state.copyWith(forgot: ApiResponse.error(l)),
          (r) => state.copyWith(forgot: ApiResponse.complete(r))));
    });
    on<_getRegister>((event, emit) async {
      emit(state.copyWith(forgot: ApiResponse.loading()));
      final response = await forgotPasswordService.registerPassword(
          password: event.password);
      emit(response.fold((l) => state.copyWith(forgot: ApiResponse.error(l)),
          (r) => state.copyWith(forgot: ApiResponse.complete(r))));
    });
  }
}
