import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/account_auth/domain/model/signup_model.dart';
import 'package:doc_online/account_auth/domain/model/login.dart';

abstract class SignUpService {
  Future<Either<MainFailure, SignupInfo>> getSignUp();
}

abstract class OtpService {
  Future<Either<MainFailure, LogInfo>> checkOtp(String otp);
}
