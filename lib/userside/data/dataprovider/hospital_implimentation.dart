import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:doc_online/userside/data/model/hopital/hospital_model.dart';
import 'package:doc_online/userside/data/model/hopital/single_hospital.dart';
import 'package:doc_online/userside/data/repository/data_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/failure/failure.dart';
import '../../../doctorside/presentation/core/url.dart';

class HospitalImplimentation implements HospitalService {
  @override
  Future<Either<MainFailure, SingleHospital>> getHospitalDetails(
      String hospitalId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);
    final url = '$baseUrl/user/hospital/$hospitalId';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = singleHospitalFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error $e');
      return left(const MainFailure.clientFailure());
    }
  }

//get hospitals
  @override
  Future<Either<MainFailure, HospitalData>> getTopHospitalData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/hospitals/top';
    try {
      final response = await Dio().get(url,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        final data = hospitalDataFromJson(response.data);

        return right(data);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('error h$e');
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, bool>> addRating(
      {required int rating,
      required String hospitalId,
      required String review}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Cookie cookie = Cookie('token', prefs.getString('token')!);
    const url = '$baseUrl/user/feedback/hospital';
    final requestBody = {
      'hospitalId': hospitalId,
      'rating': rating,
      'review': review
    };
    try {
      final response = await Dio().post(url,
          data: requestBody,
          options:
              Options(headers: {'cookie': '${cookie.name}=${cookie.value}'}));

      if (!response.data['err']) {
        return right(response.data['err']);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log('errot feed $e');
      return left(const MainFailure.clientFailure());
    }
  }
}
