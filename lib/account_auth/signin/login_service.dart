import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/model/login.dart';
import 'package:doc_online/account_auth/domain/model/signup_model.dart';

abstract class LogInService {
  Future<Either<MainFailure, LogInfo>> authLogIn(
      {required String email, required String password});
  Future<Either<MainFailure, SignupInfo>> getSignUp();
}
