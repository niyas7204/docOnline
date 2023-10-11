import 'package:dartz/dartz.dart';
import 'package:doc_online/authentication/user/data/model/login.dart';

import 'package:doc_online/core/failure/failure.dart';

abstract class LogInService {
  Future<Either<MainFailure, LogInfo>> authLogIn(
      {required String email, required String password});
  Future<Either<MainFailure, LogInfo>> getSignUp();
}
