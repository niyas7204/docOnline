import 'dart:developer';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:doc_online/ui/core/url.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:doc_online/model/user_side/doctors/single_doctor.dart';

trial() async {
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();
  SharedPreferences pref = await SharedPreferences.getInstance();
  dio.interceptors.add(CookieManager(cookieJar));
  Cookie cookie = Cookie('token', pref.getString('token')!);

  const url = '$baseUrl/user/doctor/643280c3161918b6cde6ee1e';
  try {
    log('try');
    final response = await dio.get(url,
        options:
            Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
    // log(response.data.toString());
    final data = docterTrialFromJson(response.data);
    log('try : ${data.doctor?.name}');
    log(response.data.toString());
  } catch (e) {
    log('fail$e');
  }
}
