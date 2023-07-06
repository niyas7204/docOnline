import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:doc_online/account_auth/domain/authentication/email_auth.dart';
import 'package:doc_online/account_auth/domain/model/signup_model.dart';
import 'package:doc_online/account_auth/signin/login_service.dart';
import 'package:doc_online/ui/core/url.dart';
import 'package:doc_online/account_auth/domain/model/login.dart';
import 'package:doc_online/account_auth/sign_up/get_all_data.dart';
import 'package:doc_online/account_auth/domain/failure/failure.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LogInService)
class LogInImplimentation implements LogInService {
  @override
  Future<Either<MainFailure, LogInfo>> authLogIn(
      {required String email, required password}) async {
    const url = '$baseUrl/user/auth/login';
    final requestBody = {
      'email': email,
      'password': password,
    };
    log('$email$password');
    try {
      final respone = await Dio().post(
        url,
        data: requestBody,
      );
      log('imp$respone');
      if (respone.data['err'] == false) {
        final data = LogInfo.fromJson(respone.data);
        updateshredPreference(respone.data['token'], true);

        return right(data);
      } else {
        log('serverfailure');
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, LogInfo>> getSignUp() async {
    const url = '$baseUrl/user/auth/register';

    final requestBody = {'email': GetAllData.email};

    try {
      log('12345');
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
