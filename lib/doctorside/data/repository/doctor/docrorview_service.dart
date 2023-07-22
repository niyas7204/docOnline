import 'package:dartz/dartz.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/doctorside/data/model/bookingsmodel.dart';
import 'package:doc_online/doctorside/data/model/doctorprofilemodel.dart';
import 'package:doc_online/doctorside/data/model/emr_model.dart';

abstract class DoctorviewSevice {
  Future<Either<MainFailure, BookingsModel>> getBookings();
  Future<Either<MainFailure, DoctorProfileModel>> getDoctorProfile();
}

abstract class EmrService {
  Future<Either<MainFailure, EmrResponseModel>> getEmr(
      {required String bookingId});
}
