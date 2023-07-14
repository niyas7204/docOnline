import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/doctorside/data/data/model/doctor_side/bookingsModel.dart';

abstract class DoctorviewSevice {
  Future<Either<MainFailure, BookingsModel>> getBookings();
}
