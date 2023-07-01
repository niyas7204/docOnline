import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/user/core/model/department/department_model.dart';
import 'package:doc_online/user/core/model/doctors/doctors.dart';
import 'package:doc_online/user/core/model/hopital/hospital_model.dart';

abstract class UserSideService {
  Future<Either<MainFailure, DepartmentsInfo>> getDepartmentdata();
  Future<Either<MainFailure, HospitalResponse>> getHospitalData();
  Future<Either<MainFailure, DoctorsList>> getDoctors(String id);
}
