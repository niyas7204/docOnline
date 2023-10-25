import 'package:cookie_jar/cookie_jar.dart';

import 'package:dio/dio.dart';

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
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
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
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> addProfile({required String image}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('doctorToken', prefs.getString('token')!);
    const url = '$baseUrl/doctor/profile';

    final requestBody = {'image': image};
    try {
      await dio.patch(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        return right(response.data['err']);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, BookingsModel>> getTodaysBookings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('doctorToken', prefs.getString('token')!);
    const url = '$baseUrl/doctor/booking/today';
    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = bookingsModelFromJson(response.data);
        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }
}
