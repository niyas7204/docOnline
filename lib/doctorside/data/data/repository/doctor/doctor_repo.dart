import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';

abstract class DoctorService {
  Future<Either<MainFailure, bool>> getDoctorLogIn(
      {required String email, required password});
}
