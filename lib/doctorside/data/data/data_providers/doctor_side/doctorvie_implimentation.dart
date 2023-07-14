import 'dart:developer';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:doc_online/doctorside/data/data/model/doctor_side/bookingsModel.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/doctorside/data/data/repository/doctor/docrorview_service.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DoctorViewImplimentation implements DoctorviewSevice {
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();
  @override
  Future<Either<MainFailure, BookingsModel>> getBookings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('doctorToken', prefs.getString('token')!);
    const url = '$baseUrl/doctor/bookings';
    try {
      log('ttc ${cookie.value}');
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      log(response.data.toString());
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
}
