import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doc_online/sign_up/sign_up_service.dart';
import 'package:doc_online/signin/application/bloc/login_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doc_online/domain/model/login.dart';
import 'package:doc_online/domain/failure/failure.dart';
import 'package:injectable/injectable.dart';
part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignUpService signUpService;

  SignupBloc(this.signUpService) : super(SignupState.intial()) {
    on<_getSignUph>((event, emit) async {
      emit(state.copyWith(isLoading: true, failureOrSuccess: none()));
      final Either<MainFailure, LogInfo> response =
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
