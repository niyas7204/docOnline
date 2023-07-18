import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';
import 'package:doc_online/userside/data/model/check_time_model.dart';

import '../model/department/department_model.dart';
import '../model/doctors/doctors.dart';
import '../model/doctors/single_doctor.dart';
import '../model/hopital/hospital_model.dart';
import '../model/hopital/single_hospital.dart';
import '../model/schedule/doctor_schedule.dart';

abstract class UserSideService {
  Future<Either<MainFailure, DepartmentsInfo>> getDepartmentdata();
  Future<Either<MainFailure, HospitalData>> getHospitalData();
  Future<Either<MainFailure, DoctorByDepartment>> getByDepartmentDoctors(
      String id);
  Future<Either<MainFailure, DocterTrial>> getDoctor(String did);
  Future<Either<MainFailure, DoctorSchedule>> getDoctorSchedule(String dId);
  Future<Either<MainFailure, SingleHospital>> getHospitalDetails(
      String hospitalId);
}

abstract class SearchService {
  Future<Either<MainFailure, DoctorByDepartment>> getDoctors();
  Future<Either<MainFailure, HospitalData>> getHospitals();
  List<Doctors>? onDoctorSearch(
      {required List<Doctors> doctors, required String query});
}

abstract class BookingService {
  Future<Either<MainFailure, List<Result>>> checkTimeslot(
      {required UsersideState state});
}
