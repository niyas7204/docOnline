import 'dart:developer';

import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:doc_online/account_auth/signin/core/url.dart';
import 'package:doc_online/user/core/model/department/department_model.dart';
import 'package:doc_online/user/core/model/doctors/doctors.dart';
import 'package:doc_online/user/core/model/hopital/hospital_model.dart';
import 'package:doc_online/user/infrastrusture/data_service.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: UserSideService)
class UserSideImplimentation implements UserSideService {
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();
  //get departments
  @override
  Future<Either<MainFailure, DepartmentsInfo>> getDepartmentdata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/departments';
    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = DepartmentsInfo.fromJson(response.data);
        log(data.toString());
        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }

//get hospitals
  @override
  Future<Either<MainFailure, HospitalResponse>> getHospitalData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/hospitals';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = HospitalResponse.fromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clientFailure());
    }
  }

//get doctors
  @override
  Future<Either<MainFailure, DoctorsList>> getDoctors(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/doctors?department=id';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      log(response.toString());
      if (!response.data['err']) {
        final data = DoctorsList.fromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }
}
