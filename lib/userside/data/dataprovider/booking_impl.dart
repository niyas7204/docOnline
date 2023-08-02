import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doc_online/core/failure/failure.dart';

import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:doc_online/userside/data/model/booking/bookingsmodel.dart';

import 'package:doc_online/userside/data/model/booking/check_time_model.dart';
import 'package:doc_online/userside/businessLogic/userside_bloc.dart';

import 'package:dartz/dartz.dart';
import 'package:doc_online/userside/data/model/booking/orderresponse.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:doc_online/userside/presentation/functions/user_seide.dart';
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
            log(response.data.toString());
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
        log("${data.order!.amount!}");
        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('errror :$e');
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
      log('enter imp');
      final response = await dio.post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      return right(response.data['err']);
    } catch (e) {
      log('errr $e');
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, UserBookingsModel>> getUserBookings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/booking';

    try {
      log('enter imp');
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      log(response.data.toString());
      if (!response.data['err']) {
        log('ef');

        final data = userBookingsModelFromJson(response.data);
        log('ad');
        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('errr $e');
      return left(const MainFailure.clientFailure());
    }
  }
}
