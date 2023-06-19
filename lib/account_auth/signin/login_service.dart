import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/model/login.dart';

abstract class LogInService {
  Future<Either<MainFailure, LogInfo>> authLogIn(
      {required String email, required String password});
  Future<Either<MainFailure, LogInfo>> getSignUp();
}