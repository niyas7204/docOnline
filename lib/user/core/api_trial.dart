import 'dart:developer';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:doc_online/account_auth/signin/core/url.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

trial() async {
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();
  SharedPreferences pref = await SharedPreferences.getInstance();
  dio.interceptors.add(CookieManager(cookieJar));
  Cookie cookie = Cookie('token', pref.getString('token')!);
  log(pref.getString('token')!);
  const url = '$baseUrl/user/doctors?department=64327f9eac95ffdc914c415d';
  try {
    log('try');
    final response = await dio.get(url,
        options:
            Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

    log(response.data.toString());
  } catch (e) {
    log('fail$e');
  }
}
