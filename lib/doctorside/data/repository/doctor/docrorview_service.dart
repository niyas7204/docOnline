import 'package:dartz/dartz.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/doctorside/data/model/bookingsmodel.dart';
import 'package:doc_online/doctorside/data/model/doctorprofilemodel.dart';
import 'package:doc_online/doctorside/data/model/emr_model.dart';

abstract class DoctorviewSevice {
  Future<Either<MainFailure, BookingsModel>> getBookings();
  Future<Either<MainFailure, BookingsModel>> getTodaysBookings();
  Future<Either<MainFailure, DoctorProfileModel>> getDoctorProfile();
  Future<Either<MainFailure, bool>> addProfile({required String image});
}

abstract class EmrService {
  Future<Either<MainFailure, EmrResponseModel>> getEmr(
      {required String bookingId});
  Future<Either<MainFailure, EmrResponseModel>> addEmr(
      {required String userId,
      required String bookingId,
      required String prescription,
      required String patientName,
      required int age,
      required int weight,
      required String gender});
}
