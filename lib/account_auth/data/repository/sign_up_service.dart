import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/data/model/login.dart';
import 'package:doc_online/account_auth/data/model/signup_model.dart';
import 'package:doc_online/core/failure/failure.dart';

abstract class SignUpService {
  Future<Either<MainFailure, SignupInfo>> getSignUp();
}

abstract class OtpService {
  Future<Either<MainFailure, LogInfo>> checkOtp(String otp);
}

abstract class ForgotPasswordService {
  Future<Either<MainFailure, LogInfo>> changePassword({required String email});
  Future<Either<MainFailure, bool>> verifyOtp({required String otp});
}
