import 'package:doc_online/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/domain/model/login.dart';

abstract class LogInService {
  Future<Either<MainFailure, LogInfo>> authLogIn();
}
