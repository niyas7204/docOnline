import 'dart:developer';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:doc_online/userside/data/model/doctors/doctors.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/userside/data/model/hopital/hospital_model.dart';

import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchImplimentation implements SearchService {
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();
  @override
  Future<Either<MainFailure, DoctorByDepartment>> getDoctors() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/doctors';
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
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HospitalData>> getHospitals() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/hospitals';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        log('rsp');
        final data = hospitalDataFromJson(response.data);
        log('dta');
        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('err $e');
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  List<Doctors>? onDoctorSearch(
      {required List<Doctors> doctors, required String query}) {
    List<Doctors> result = doctors
        .where((element) =>
            element.name!.trim().toLowerCase().contains(query.toLowerCase()))
        .toList();
    return result;
  }

  @override
  List<HospitalDeatails>? onHospitalSearch(
      {required List<HospitalDeatails> hospitals, required String query}) {
    List<HospitalDeatails> result = hospitals
        .where((element) =>
            element.name!.trim().toLowerCase().contains(query.toLowerCase()))
        .toList();
    log(result.length.toString());
    return result;
  }
}
