import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:dartz/dartz.dart';
import 'package:doc_online/authentication/user/data/model/login.dart';
import 'package:doc_online/authentication/user/data/repository/sign_up_service.dart';
import 'package:doc_online/core/get_all_data.dart';

import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: OtpService)
class OtpImplimentation implements OtpService {
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();

  @override
  Future<Either<MainFailure, LogInfo>> checkOtp(otp) async {
    dio.interceptors.add(CookieManager(cookieJar));
    Cookie cookie = Cookie('tempToken', GetAllData.tempToken!);
    const url = '$baseUrl/user/auth/register/verify';
    final requestBody = {
      'name': GetAllData.userName,
      'email': GetAllData.email,
      'password': GetAllData.password,
      'otp': otp,
    };
    try {
      final response = await dio.post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (response.data['err']) {
        return left(const MainFailure.clientFailure());
      } else {
        final data = LogInfo.fromJson(response.data);
        return right(data);
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.serverFailure());
    }
  }
}
