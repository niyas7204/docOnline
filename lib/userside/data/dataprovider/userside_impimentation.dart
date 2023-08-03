import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/userside/data/model/hopital/single_hospital.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/department/department_model.dart';
import '../model/doctors/doctors.dart';
import '../model/doctors/single_doctor.dart';
import '../model/hopital/hospital_model.dart';
import '../model/schedule/doctor_schedule.dart';

class UserSideImplimentation implements UserSideService {
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();
  //get departments
  @override
  Future<Either<MainFailure, DepartmentsInfo>> getDepartmentdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);

    const url = '$baseUrl/user/departments';
    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = departmentsInfoFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error d$e');
      return left(const MainFailure.clientFailure());
    }
  }

//get hospitals
  @override
  Future<Either<MainFailure, HospitalData>> getHospitalData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/hospitals/top';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = hospitalDataFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error h$e');
      return left(const MainFailure.clientFailure());
    }
  }

//get doctors
  @override
  Future<Either<MainFailure, DoctorByDepartment>> getByDepartmentDoctors(
      String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    final url = '$baseUrl/user/doctors?department=$id';

    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = doctorByDepartmentFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error=  $e');
      return left(const MainFailure.clientFailure());
    }
  }

//doctor
  @override
  Future<Either<MainFailure, DocterTrial>> getDoctor(String did) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    final url = '$baseUrl/user/doctor/$did';

    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = docterTrialFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error=  $e');
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, DoctorSchedule>> getDoctorSchedule(
      String dId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    final url = '$baseUrl/user/doctor/schedule/$dId';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = doctorScheduleFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('errot  $e');
      return left(const MainFailure.clientFailure());
    }
  }

  // hospital details
  @override
  Future<Either<MainFailure, SingleHospital>> getHospitalDetails(
      String hospitalId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    final url = '$baseUrl/user/hospital/$hospitalId';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = singleHospitalFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error $e');
      return left(const MainFailure.clientFailure());
    }
  }
}
