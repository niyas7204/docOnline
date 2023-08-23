import 'package:dartz/dartz.dart';

import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/userside/account_auth/data/model/login.dart';

abstract class LogInService {
  Future<Either<MainFailure, LogInfo>> authLogIn(
      {required String email, required String password});
  Future<Either<MainFailure, LogInfo>> getSignUp();
}
