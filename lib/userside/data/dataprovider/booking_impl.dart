import 'dart:developer';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:doc_online/doctorside/data/data/model/bookingsModel.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:doc_online/userside/data/model/check_time_model.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:doc_online/userside/presentation/functions/user_seide.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookingImplimentation implements BookingService {
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();
  @override
  Future<Either<MainFailure, List<Result>>> checkTimeslot(
      {required UsersideState state}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/check-time';
    try {
      List<Result> finanlSchedule = [];
      var date = DateTime.now();
      var list = scheduleList(state);
      var schedele = list.item2;
      for (int i = 0; i < 7; i++) {
        date = date.add(const Duration(days: 1));
        int day = date.weekday;
        if (schedele[day - 1].isNotEmpty) {
          final requestbody = {
            "date": date.toString(),
            "schedule": schedele[day - 1],
          };
          final response = await dio.post(url,
              data: requestbody,
              options: Options(
                  headers: {'cookie': '${cookie.name}=${cookie.value}'}));
          if (!response.data['err']) {
            final data = checkTimeslotFromJson(response.data);

            finanlSchedule.add(data.result!);
          } else {
            log(response.toString());
            return left(const MainFailure.serverFailure());
          }
        }
      }

      return right(finanlSchedule);
    } catch (e) {
      log('error h:$e');
      return left(const MainFailure.clientFailure());
    }
  }
}
