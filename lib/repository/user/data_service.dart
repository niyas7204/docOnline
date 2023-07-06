import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/model/user_side/department/department_model.dart';
import 'package:doc_online/model/user_side/doctors/doctors.dart';
import 'package:doc_online/model/user_side/hopital/hospital_model.dart';
import 'package:doc_online/model/user_side/schedule/doctor_schedule.dart';
import 'package:doc_online/model/user_side/doctors/single_doctor.dart';

abstract class UserSideService {
  Future<Either<MainFailure, DepartmentsInfo>> getDepartmentdata();
  Future<Either<MainFailure, HospitalResponse>> getHospitalData();
  Future<Either<MainFailure, DoctorByDepartment>> getDoctors(String id);
  Future<Either<MainFailure, DocterTrial>> getDoctor(String did);
  Future<Either<MainFailure, DoctorSchedule>> getDoctorSchedule(String dId);
}
