import 'package:dartz/dartz.dart';
import 'package:doc_online/domain/failure/failure.dart';
import 'package:doc_online/domain/model/login.dart';

abstract class SignUpService {
  Future<Either<MainFailure, LogInfo>> getSignUp();
}

abstract class OtpService {
  Future<Either<MainFailure, LogInfo>> checkOtp(String otp);
}
