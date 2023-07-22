import 'dart:developer';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:doc_online/doctorside/data/model/bookingsmodel.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/doctorside/data/model/doctorprofilemodel.dart';
import 'package:doc_online/doctorside/data/repository/doctor/docrorview_service.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorViewImplimentation implements DoctorviewSevice {
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();
  //doctor booking detatils
  @override
  Future<Either<MainFailure, BookingsModel>> getBookings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('doctorToken', prefs.getString('token')!);
    const url = '$baseUrl/doctor/bookings';
    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = bookingsModelFromJson(response.data);
        return right(data);
      } else {
        log('failure');
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error $e');
      return left(const MainFailure.clientFailure());
    }
  }

//get Doctor profile
  @override
  Future<Either<MainFailure, DoctorProfileModel>> getDoctorProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('doctorToken', prefs.getString('token')!);
    const url = '$baseUrl/doctor/profile';
    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = doctorProfileModelFromJson(response.data);
        return right(data);
      } else {
        log('failure');
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error $e');
      return left(const MainFailure.clientFailure());
    }
  }
}
