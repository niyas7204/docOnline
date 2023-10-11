import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:doc_online/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:doc_online/core/shared_preferences.dart';
import 'package:doc_online/doctorside/data/repository/doctor/doctor_repo.dart';
import 'package:doc_online/doctorside/presentation/core/url.dart';

class DoctorRepoImplimentation implements DoctorService {
  @override
  Future<Either<MainFailure, bool>> getDoctorLogIn(
      {required String email, required password}) async {
    const url = '$baseUrl/doctor/auth/login';
    final requestBody = {
      'email': email,
      'password': password,
    };

    try {
      final respone = await Dio().post(
        url,
        data: requestBody,
      );

      if (respone.data['err'] == false) {
        log('hello');
        final data = respone.data['err'];

        String headSTr = respone.headers['set-cookie'].toString();
        final tokenRegExp = RegExp(r'(?<=doctorToken=)[^;]+');
        final match = tokenRegExp.firstMatch(headSTr);
        final token = match!.group(0);

        await updateshredPreference(token!, false, true);

        return right(data);
      } else {
        log(respone.data);
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      return left(const MainFailure.clientFailure());
    }
  }
}
