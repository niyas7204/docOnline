import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doc_online/core/failure/failure.dart';

import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:doc_online/userside/bussinesslogic/doctor/userside_bloc.dart';
import 'package:doc_online/userside/data/model/booking/bookingsmodel.dart';

import 'package:doc_online/userside/data/model/booking/check_time_model.dart';

import 'package:dartz/dartz.dart';
import 'package:doc_online/userside/data/model/booking/orderresponse.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:doc_online/core/helpers/user_seide.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookingImplimentation implements BookingService {
  Dio dio = Dio();

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
            return left(const MainFailure.serverFailure());
          }
        }
      }

      return right(finanlSchedule);
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, OrderResponseModel>> getOrder(
      {required int fee}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/payment';
    final requestBody = {"fees": fee};
    try {
      final response = await dio.post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      if (!response.data['err']) {
        final data = orderResponseModelFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> paymentVerify(
      {required requestBody}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/payment/verify';

    try {
      final response = await dio.post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      return right(response.data['err']);
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, UserBookingsModel>> getUserBookings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/booking';

    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = userBookingsModelFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }
}
