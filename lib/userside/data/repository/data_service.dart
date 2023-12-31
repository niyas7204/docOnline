import 'package:dartz/dartz.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/userside/bussinesslogic/doctor/userside_bloc.dart';

import 'package:doc_online/userside/data/model/booking/bookingsmodel.dart';
import 'package:doc_online/userside/data/model/booking/check_time_model.dart';
import 'package:doc_online/userside/data/model/booking/orderresponse.dart';
import 'package:doc_online/userside/data/model/userprofile/userprofile_model.dart';

import '../model/department/department_model.dart';
import '../model/doctors/doctors.dart';
import '../model/doctors/single_doctor.dart';
import '../model/hopital/hospital_model.dart';
import '../model/hopital/single_hospital.dart';
import '../model/schedule/doctor_schedule.dart';

abstract class UserSideService {
  Future<Either<MainFailure, DoctorByDepartment>> getByDepartmentDoctors(
      String id);
  Future<Either<MainFailure, DocterTrial>> getDoctor(String did);
  Future<Either<MainFailure, DoctorSchedule>> getDoctorSchedule(String dId);
  Future<Either<MainFailure, bool>> addRating(
      {required int rating, required String doctorId, required String review});
}

abstract class HospitalService {
  Future<Either<MainFailure, HospitalData>> getTopHospitalData();
  Future<Either<MainFailure, SingleHospital>> getHospitalDetails(
      String hospitalId);
  Future<Either<MainFailure, bool>> addRating(
      {required int rating,
      required String hospitalId,
      required String review});
}

abstract class DepartmentService {
  Future<Either<MainFailure, DepartmentsInfo>> getDepartmentdata();
}

abstract class SearchService {
  Future<Either<MainFailure, DoctorByDepartment>> getDoctors();
  Future<Either<MainFailure, HospitalData>> getHospitals();
  List<Doctors>? onDoctorSearch(
      {required List<Doctors> doctors, required String query});
  List<HospitalDeatails>? onHospitalSearch(
      {required List<HospitalDeatails> hospitals, required String query});
}

abstract class BookingService {
  Future<Either<MainFailure, UserBookingsModel>> getUserBookings();
  Future<Either<MainFailure, List<Result>>> checkTimeslot(
      {required UsersideState state});
  Future<Either<MainFailure, OrderResponseModel>> getOrder({required int fee});
  Future<Either<MainFailure, bool>> paymentVerify({required requestBody});
}

abstract class UserProfileService {
  Future<Either<MainFailure, UserProfileModel>> getUserprofile();
}
