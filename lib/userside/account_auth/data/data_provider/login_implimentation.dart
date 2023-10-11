import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:doc_online/core/authentication/email_auth.dart';

import 'package:doc_online/core/failure/failure.dart';

import 'package:doc_online/doctorside/presentation/core/url.dart';

import 'package:doc_online/core/get_all_data.dart';

import 'package:dio/dio.dart';
import 'package:doc_online/userside/account_auth/data/model/login.dart';

import '../repository/login_service.dart';

class LogInImplimentation implements LogInService {
  @override
  Future<Either<MainFailure, LogInfo>> authLogIn(
      {required String email, required password}) async {
    const url = '$baseUrl/user/auth/login';
    final requestBody = {
      'email': email,
      'password': password,
    };

    try {
      final respone = await Dio().post(
        url,
        data: requestBody,
      );
      log('imp$respone');
      if (respone.statusCode == 200 || respone.statusCode == 201) {
        if (respone.data['err'] == false) {
          final data = LogInfo.fromJson(respone.data);
          await updateshredPreference(respone.data['token'], true, false);

          return right(data);
        } else {
          return left(const MainFailure.serverFailure());
        }
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log("error $e");
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, LogInfo>> getSignUp() async {
    const url = '$baseUrl/user/auth/register';

    final requestBody = {'email': GetAllData.email};

    try {
      final response = await Dio().post(url, data: requestBody);
      log(response.toString());
      if (response.data['err']) {
        return left(const MainFailure.serverFailure());
      } else {
        final data = LogInfo.fromJson(response.data);
        GetAllData.tempToken = data.token;
        log(data.toString());
        return right(data);
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clientFailure());
    }
  }
}