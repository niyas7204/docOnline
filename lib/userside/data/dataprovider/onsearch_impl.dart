import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';
import 'package:doc_online/userside/data/model/booking/check_time_model.dart';

import 'package:doc_online/userside/presentation/functions/user_seide.dart';
import 'package:shared_preferences/shared_preferences.dart';

checkTime(UsersideState state) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  Cookie cookie = Cookie('token', prefs.getString('token')!);
  const url = '$baseUrl/user/check-time';
  var date = DateTime.now();
  var list = scheduleList(state);
  var schedele = list.item2;
  for (int i = 0; i < 7; i++) {
    date = date.add(const Duration(days: 1));
    int day = date.weekday;
    final requestbody = {
      "date": date,
      "schedule": schedele[day],
    };
    final response = await Dio().post(url,
        data: requestbody,
        options:
            Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
    final data = checkTimeslotFromJson(response.data);
    log("hhhhh${data.toString()}");
  }
}
