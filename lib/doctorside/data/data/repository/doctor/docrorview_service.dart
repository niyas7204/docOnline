import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/doctorside/data/data/model/bookingsModel.dart';
import 'package:doc_online/doctorside/data/data/model/doctorprofilemodel.dart';

abstract class DoctorviewSevice {
  Future<Either<MainFailure, BookingsModel>> getBookings();
  Future<Either<MainFailure, DoctorProfileModel>> getDoctorProfile();
}
