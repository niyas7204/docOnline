import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:doc_online/signin/login_service.dart';
import 'package:doc_online/signin/core/url.dart';
import 'package:doc_online/domain/model/login.dart';
import 'package:doc_online/domain/failure/failure.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LogInService)
class LogInImplimentation implements LogInService {
  @override
  Future<Either<MainFailure, LogInfo>> authLogIn() async {
    const url = '$baseUrl/user/auth/login';
    final requestBody = {
      'email': 'mohammadniyas7204@gmail.com',
      'password': '123',
    };
    try {
      final respone = await Dio().post(url, data: requestBody,);
      log(respone.toString());
      if (respone.data['err'] == false) {
        final data = LogInfo.fromJson(respone.data);

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
}
