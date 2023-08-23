import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doc_online/doctorside/data/model/emr_model.dart';
import 'package:doc_online/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/doctorside/data/repository/doctor/docrorview_service.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EmrImplimentation implements EmrService {
  Dio dio = Dio();
  @override
  Future<Either<MainFailure, EmrResponseModel>> getEmr(
      {required String bookingId}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('doctorToken', prefs.getString('token')!);
    final url = '$baseUrl/doctor/emr/$bookingId';
    try {
      final response = await dio.get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      log(response.toString());
      if (!response.data['err']) {
        final data = emrResponseModelFromJson(response.data);

        return right(data);
      } else {
        log('server');
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('emr err: $e');
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, EmrResponseModel>> addEmr(
      {required String userId,
      required String bookingId,
      required String prescription,
      required String patientName,
      required int age,
      required int weight,
      required String gender}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('doctorToken', prefs.getString('token')!);
    const url = '$baseUrl/doctor/emr';
    final getUrl = '$baseUrl/doctor/emr/$bookingId';
    final requestBody = {
      'userId': userId,
      'bookingId': bookingId,
      'prescription': prescription,
      'age': age,
      'weight': weight,
      'gender': gender
    };

    try {
      final postResponse = await dio.post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));
      log('${postResponse.data}');
      if (!postResponse.data['err']) {
        log('false');
      } else {
        log('true');
      }
      final response = await dio.get(getUrl,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = emrResponseModelFromJson(response.data);

        return right(data);
      } else {
        log('server');
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('emr err: $e');
      return left(const MainFailure.clientFailure());
    }
  }
}
